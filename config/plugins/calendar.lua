local M = {}

local function ready()
  return Obsidian ~= nil and Obsidian.dir ~= nil and Obsidian.opts ~= nil
end

function M.get(year, month)
  if not ready() then
    return {}
  end
  local marks = {}
  local daily = require("obsidian.daily")
  -- Noon avoids midnight DST transitions; stop before os.time rolls into next month.
  for day = 1, 31 do
    local timestamp = os.time({ year = year, month = month, day = day, hour = 12 })
    if tonumber(os.date("%m", timestamp)) ~= month then
      break
    end
    local path = daily.daily_note_path(timestamp)
    if path:is_file() then
      table.insert(marks, { year = year, month = month, day = day })
    end
  end
  return marks
end

function M.open_daily(year, month, day)
  if not ready() then
    vim.notify("Obsidian vault is unavailable", vim.log.levels.WARN)
    return
  end
  local timestamp = os.time({ year = year, month = month, day = day, hour = 12 })
  local note = require("obsidian.daily").daily({ date = timestamp })
  if not note then
    return
  end
  -- Never regenerate existing notes: preserve their contents and frontmatter.
  if not note:exists() then
    -- Obsidian's default date substitution uses today, not the daily note's date.
    -- Override only during this synchronous write, restoring it even on failure.
    local substitutions = Obsidian.opts.templates.substitutions
    local original_date = substitutions.date
    substitutions.date = function(_, suffix)
      return require("obsidian.util").format_date(
        timestamp, suffix or Obsidian.opts.templates.date_format
      )
    end
    local ok, result = pcall(function() return note:write() end)
    substitutions.date = original_date
    if not ok then
      error(result)
    end
    note = result
  end
  require("calendar.view").close()
  note:open()
end

function M.setup()
  require("calendar").setup({})
  local extensions = require("calendar.extensions")
  extensions.register("obsidian", { get = M.get })
  -- This calendar is dedicated to daily notes; Enter needs no action chooser.
  extensions.on_action = M.open_daily
  vim.api.nvim_create_user_command("ObsidianCalendar", function()
    if not ready() then
      vim.notify("Obsidian vault is unavailable", vim.log.levels.WARN)
      return
    end
    require("calendar").open()
    local view = require("calendar.view")
    for key, action in pairs({
      ["<Left>"] = view.previous_day,
      ["<Down>"] = view.next_week,
      ["<Up>"] = view.previous_week,
      ["<Right>"] = view.next_day,
    }) do
      vim.keymap.set("n", key, action, { buffer = true, silent = true })
    end
  end, { desc = "Browse Obsidian daily notes" })
end

return M
