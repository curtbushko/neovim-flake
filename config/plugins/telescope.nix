{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      file-browser.enable = true;
      ui-select.enable = true;
      undo.enable = true;
    };
  };
  keymaps = [
    {
      action = "<cmd>Telescope buffers sort_mru=true sort_lastused=true<CR>";
      key = "<leader>,";
      options.desc = "Switch buffer";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope command_history<CR>";
      key = "<leader>:";
      options.desc = "Command history";
      mode = ["n"];
    }

    {
      action = "<cmd>Telescope buffers sort_mru=true sort_lastused=true<CR>";
      key = "<leader>fb";
      options.desc = "Find buffers";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope find_files hidden=false<CR>";
      key = "<leader>ff";
      options.desc = "Find files";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope find_files hidden=false<CR>";
      key = "<leader><space>";
      options.desc = "Find files";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope live_grep hidden=false<CR>";
      key = "<leader>fg";
      options.desc = "Grep";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope live_grep hidden=true no_ignore=true<CR>";
      key = "<leader>fG";
      options.desc = "Grep (hidden)";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope oldfiles<CR>";
      key = "<leader>fr";
      options.desc = "Recent";
      mode = ["n"];
    }
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>ft";
      options.desc = "Todo";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope lsp_document_symbols<CR>";
      key = "<leader>fs";
      options.desc = "Symbols";
      mode = ["n"];
    }
    # Git keymaps
    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<leader>gb";
      options.desc = "Branches";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>gc";
      options.desc = "Commits";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gs";
      options.desc = "Status";
      mode = ["n"];
    }
  ];
}
