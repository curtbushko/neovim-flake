-- Run with: nvim --headless -u NONE -l tests/calendar.lua
local adapter = dofile("config/plugins/calendar.lua")
local writes, opens, closes, notices = 0, 0, 0, 0
local existing = {}
local dates = {}
local registered
local command
local rendered_date
local fail_write = false
local extensions = {}
local original_date = function() return "today" end
package.loaded["obsidian.util"] = {
  format_date = function(timestamp, format)
    return os.date(format, timestamp)
  end,
}
local real_notify = vim.notify
vim.notify = function() notices = notices + 1 end

package.loaded["obsidian.daily"] = {
  daily_note_path = function(timestamp)
    local key = os.date("%Y%m%d", timestamp)
    table.insert(dates, key)
    return { is_file = function() return existing[key] == true end }
  end,
  daily = function(opts)
    local key = os.date("%Y%m%d", opts.date)
    local note = {}
    note.exists = function() return existing[key] == true end
    note.write = function()
      rendered_date = Obsidian.opts.templates.substitutions.date({}, "%Y%m%d")
      if fail_write then error("Simulated write failure") end
      writes = writes + 1
      existing[key] = true
      return note
    end
    note.open = function() opens = opens + 1 end
    return note
  end,
}
package.loaded["calendar.view"] = { close = function() closes = closes + 1 end }
package.loaded["calendar"] = { setup = function() end, open = function() end }
extensions.register = function(name, extension)
  assert(name == "obsidian")
  registered = extension
end
package.loaded["calendar.extensions"] = extensions

Obsidian = nil
assert(#adapter.get(2026, 11) == 0)
adapter.open_daily(2026, 11, 24)
assert(notices == 1 and writes == 0 and closes == 0)

Obsidian = {
  dir = "/test-vault",
  opts = { templates = {
    date_format = "%Y-%m-%d",
    substitutions = { date = original_date },
  } },
}
existing["20240229"] = true
local marks = adapter.get(2024, 2)
assert(#dates == 29 and #marks == 1 and marks[1].day == 29)
dates = {}
adapter.get(2026, 2)
assert(#dates == 28)

existing["20261124"] = true
adapter.open_daily(2026, 11, 24)
assert(writes == 0 and opens == 1 and closes == 1)
adapter.open_daily(2026, 11, 25)
assert(writes == 1 and opens == 2 and closes == 2)
assert(rendered_date == "20261125")
assert(Obsidian.opts.templates.substitutions.date == original_date)
fail_write = true
assert(not pcall(adapter.open_daily, 2020, 1, 2))
assert(rendered_date == "20200102")
assert(Obsidian.opts.templates.substitutions.date == original_date)
fail_write = false
adapter.open_daily(2026, 11, 25)
assert(writes == 1 and opens == 3)

local create_command = vim.api.nvim_create_user_command
vim.api.nvim_create_user_command = function(name, callback)
  assert(name == "ObsidianCalendar")
  command = callback
end
adapter.setup()
assert(registered.get == adapter.get)
assert(extensions.on_action == adapter.open_daily)
assert(registered.actions == nil)
assert(type(command) == "function")
vim.api.nvim_create_user_command = create_command
vim.notify = real_notify
print("Calendar adapter tests passed")
