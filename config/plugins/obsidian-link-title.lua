local M = {}

function M.setup()
  local Note = require("obsidian.note")
  local format_link = Note.format_link
  Note.format_link = function(self, opts)
    opts = opts or {}
    local style = opts.style or Obsidian.opts.link.style
    local title = self.metadata and self.metadata.title
    local label = opts.label
    -- Completion passes the filename as an explicit label. Replace that default,
    -- but keep user-selected aliases or visual selections as written.
    local default_label = not label or label == tostring(self.id)
      or (self.path and (label == self.path.name or label == self.path.stem))
    if style == "markdown" and default_label and type(title) == "string" and vim.trim(title) ~= "" then
      opts = vim.tbl_extend("force", {}, opts, {
        label = vim.trim(title:gsub("%s+", " ")),
      })
    end
    return format_link(self, opts)
  end
end

return M
