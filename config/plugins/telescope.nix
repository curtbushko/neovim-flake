{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      file-browser.enable = true;
      ui-select.enable = true;
      undo.enable = true;
    };
    settings = {
      defaults = {
        layout_config = {
          horizontal = {
            prompt_position = "top";
          };
        };
        sorting_strategy = "ascending";
        winblend = 0;
      };
      mappings = {
        i = {
          "<C-n>" = {__raw = "require('telescope.actions').cycle_history_next";};
          "<C-p>" = {__raw = "require('telescope.actions').cycle_history_prev";};
          "<C-j>" = {__raw = "require('telescope.actions').move_selection_next";};
          "<C-k>" = {__raw = "require('telescope.actions').move_selection_previous";};
        };
        n = {
          "q" = {__raw = "require('telescope.actions').close";};
          "<C-n>" = {__raw = "require('telescope.actions').cycle_history_next";};
          "<C-p>" = {__raw = "require('telescope.actions').cycle_history_prev";};
          "<C-j>" = {__raw = "require('telescope.actions').move_selection_next";};
          "<C-k>" = {__raw = "require('telescope.actions').move_selection_previous";};
        };
      };
    };
  };
  keymaps = [
    {
      # Maps for jj to act as Esc in insert and command modes. Useful in telescope
      key = "jj";
      action = "<ESC>";
      mode = ["i" "c"];
    }
    {
      action = "<cmd>Telescope buffers sort_mru=true sort_lastused=true<CR>";
      key = "<leader>,";
      options.desc = "switch buffer";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope command_history<CR>";
      key = "<leader>:";
      options.desc = "command history";
      mode = ["n"];
    }

    {
      action = "<cmd>Telescope buffers sort_mru=true sort_lastused=true<CR>";
      key = "<leader>fb";
      options.desc = "find buffers";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope find_files hidden=false<CR>";
      key = "<leader>ff";
      options.desc = "find files";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope find_files hidden=false<CR>";
      key = "<leader><space>";
      options.desc = "find files";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope live_grep hidden=false<CR>";
      key = "<leader>fg";
      options.desc = "grep";
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
      options.desc = "recent";
      mode = ["n"];
    }
    {
      action = "<cmd>TodoTelescope<CR>";
      key = "<leader>ft";
      options.desc = "todo";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope lsp_document_symbols<CR>";
      key = "<leader>fs";
      options.desc = "symbols";
      mode = ["n"];
    }
    # Git keymaps
    {
      action = "<cmd>Telescope git_branches<CR>";
      key = "<leader>gb";
      options.desc = "branches";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope git_commits<CR>";
      key = "<leader>gc";
      options.desc = "commits";
      mode = ["n"];
    }
    {
      action = "<cmd>Telescope git_status<CR>";
      key = "<leader>gs";
      options.desc = "status";
      mode = ["n"];
    }
  ];
}
