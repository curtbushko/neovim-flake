-- Run with the built configuration: nvim --headless -l tests/calendar-integration.lua
-- All note writes are redirected to a temporary vault.
local root = vim.fn.tempname()
local ok, err = xpcall(function()
  vim.fn.mkdir(root .. "/templates", "p")
  vim.fn.writefile({
    "---",
    "title: {{date:MMMM}} {{date:DD}}, {{date:YYYY}}",
    "date: {{date}} {{time}}",
    "tags:",
    "  - daily",
    "  - {{date:YYYY}}-{{date:MM}}",
    "---",
    "# Daily integration test",
    "[Daily](/daily/{{date:YYYY}}{{date:MM}}{{date:DD}}.md)",
  }, root .. "/templates/daily.md")
  Obsidian.dir = require("obsidian.path").new(root)
  Obsidian.workspace.root = Obsidian.dir
  Obsidian.workspace.path = Obsidian.dir
  vim.ui.select = function() error("Unexpected action picker") end
  local original_date = Obsidian.opts.templates.substitutions.date

  vim.cmd("ObsidianCalendar")
  assert(vim.api.nvim_win_get_config(0).relative ~= "", "Calendar did not open as a float")
  local view = require("calendar.view")
  for key, action in pairs({
    ["<Left>"] = view.previous_day,
    ["<Down>"] = view.next_week,
    ["<Up>"] = view.previous_week,
    ["<Right>"] = view.next_day,
  }) do
    local mapping = vim.fn.maparg(key, "n", false, true)
    assert(mapping.buffer == 1 and mapping.callback == action, "Incorrect calendar mapping: " .. key)
  end
  -- Calendar's Enter handler dispatches through this exact hook.
  require("calendar.extensions").on_action(2024, 2, 29)
  local file = root .. "/daily/20240229.md"
  assert(vim.fn.filereadable(file) == 1, "Daily filename or directory mismatch")
  local contents = table.concat(vim.fn.readfile(file), "\n")
  for _, expected in ipairs({
    "February 29, 2024", "2024-02-29", "2024-02", "# Daily integration test",
    "[Daily](/daily/20240229.md)",
  }) do
    assert(contents:find(expected, 1, true), "Missing expected template content: " .. expected)
  end
  assert(not contents:find("{{", 1, true), "Unexpanded template substitutions")
  assert(Obsidian.opts.templates.substitutions.date == original_date)

  vim.fn.writefile({ "Existing daily note must survive" }, file)
  vim.cmd("ObsidianCalendar")
  require("calendar.extensions").on_action(2024, 2, 29)
  assert(vim.fn.readfile(file)[1] == "Existing daily note must survive")
  vim.wait(100)
end, debug.traceback)
vim.fn.delete(root, "rf")
if not ok then
  error(err)
end
print("Calendar integration passed: no picker, selected date/title, template, and existing-note preservation")
