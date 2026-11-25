{
  pkgs,
  inputs,
  ...
}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      pname = "calendar.nvim";
      version = inputs.plugin-calendar.shortRev or "unstable";
      src = inputs.plugin-calendar;
    })
  ];

  extraConfigLua = ''
    local obsidian_calendar = (function()
      ${builtins.readFile ./calendar.lua}
    end)()
    obsidian_calendar.setup()
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>oc";
      action = "<cmd>ObsidianCalendar<cr>";
      options.desc = "Daily note calendar";
    }
  ];
}
