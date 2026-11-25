local M = {}

function M.format(buffer)
  local bufnr = buffer.bufnr
  if not bufnr or not vim.api.nvim_buf_is_valid(bufnr) or not vim.api.nvim_buf_is_loaded(bufnr) then
    return buffer.name
  end
  if vim.bo[bufnr].filetype ~= "markdown" and not (buffer.path or ""):lower():match("%.md$") then
    return buffer.name
  end

  -- Buffer-local storage is released on wipeout; changedtick also tracks unsaved edits.
  local tick = vim.api.nvim_buf_get_changedtick(bufnr)
  local cached = vim.b[bufnr].markdown_buffer_title
  if cached and cached.tick == tick then
    return cached.title or buffer.name
  end

  local ok, note = pcall(function()
    return require("obsidian.note").from_buffer(bufnr)
  end)
  local title = ok and note.has_frontmatter and note.metadata and note.metadata.title
  if type(title) == "string" then
    title = vim.trim(title:gsub("%s+", " "))
    if title == "" then title = nil end
  else
    title = nil
  end
  vim.b[bufnr].markdown_buffer_title = { tick = tick, title = title }
  return title or buffer.name
end

return M
