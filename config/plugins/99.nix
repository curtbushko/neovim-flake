{pkgs, inputs, ...}: let
  colors = import ../../config/colors/gruvbox-material.nix {};
in {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "99";
      src = inputs.plugin-99;
    })
  ];

  extraConfigLua = ''
    require("99").setup({
      provider = require("99.providers").ClaudeCodeProvider,
    })
  '';

  highlight = {
    NinetyNineNormal = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    NinetyNineBorder = {
      bg = colors.bg_dark;
      fg = colors.purple;
    };
    NinetyNineTitle = {
      bg = colors.bg_dark;
      fg = colors.purple;
      bold = true;
    };
    NinetyNinePrompt = {
      bg = colors.bg_dark;
      fg = colors.fg;
    };
    NinetyNineInfo = {
      fg = colors.blue2;
    };
    NinetyNineWarning = {
      fg = colors.yellow;
    };
    NinetyNineError = {
      fg = colors.red1;
    };
    NinetyNineSuccess = {
      fg = colors.green1;
    };
    NinetyNineStatus = {
      bg = colors.bg_dark;
      fg = colors.purple;
    };
  };

  keymaps = [
    {
      key = "<leader>av";
      action.__raw = ''function() require("99").visual() end'';
      options.desc = "visual selection";
      mode = ["v"];
    }
    {
      key = "<leader>as";
      action.__raw = ''function() require("99").stop_all_requests() end'';
      options.desc = "stop all requests";
      mode = ["v" "n"];
    }
    {
      key = "<leader>al";
      action.__raw = ''function() require("99").view_logs() end'';
      options.desc = "logs";
      mode = ["n"];
    }
    {
      key = "<leader>ai";
      action.__raw = ''function() require("99").info() end'';
      options.desc = "info";
      mode = ["n"];
    }
    {
      key = "<leader>aq";
      action.__raw = ''function() require("99").previous_requests_to_qfix() end'';
      options.desc = "quickfix";
      mode = ["n"];
    }
    {
      key = "<leader>ac";
      action.__raw = ''function() require("99").clear_all_marks() end'';
      options.desc = "clear marks";
      mode = ["n"];
    }
  ];
}
