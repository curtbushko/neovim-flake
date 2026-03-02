{pkgs, inputs, ...}: {
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
