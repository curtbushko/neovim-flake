-- Run with the built configuration loaded (requires obsidian.note on runtimepath).
local formatter = dofile("config/plugins/markdown-buffer-title.lua")
local buf = vim.api.nvim_create_buf(true, false)
local path = vim.fn.tempname() .. ".md"
vim.api.nvim_buf_set_name(buf, path)
vim.bo[buf].filetype = "markdown"
local buffer = { bufnr = buf, path = path, name = "timestamp.md" }
local function check(lines, expected)
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  assert(formatter.format(buffer) == expected, "Unexpected title for " .. vim.inspect(lines))
end
check({ "---", 'title: "A title: with punctuation"', "---", "# Body" }, "A title: with punctuation")
assert(formatter.format(buffer) == "A title: with punctuation", "Cached title mismatch")
check({ "---", "title: Changed without saving", "---" }, "Changed without saving")
check({ "---", 'title: "  A   spaced title  "', "---" }, "A spaced title")
check({ "---", "tags: [daily]", "---", "# Not a frontmatter title" }, "timestamp.md")
check({ "# No frontmatter", "title: Not YAML" }, "timestamp.md")
check({ "---", "title: ''", "---" }, "timestamp.md")
check({ "---", "title: [one, two]", "---" }, "timestamp.md")
check({ "---", "title: 123", "---" }, "timestamp.md")
vim.bo[buf].filetype = "lua"
buffer.path = "/tmp/example.lua"
check({ "---", "title: Not Markdown", "---" }, "timestamp.md")
vim.api.nvim_buf_delete(buf, { force = true })
assert(formatter.format(buffer) == "timestamp.md", "Invalid buffer fallback failed")
assert(formatter.format({ name = "unloaded.md" }) == "unloaded.md")
print("Markdown buffer title tests passed")
