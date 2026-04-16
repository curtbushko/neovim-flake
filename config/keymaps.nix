{
  keymaps = [
    # {
    #   # Maps for jj to act as Esc in insert and command modes
    #   key = "jj";
    #   action = "<ESC>";
    #   mode = ["i" "c"];
    # }
    {
      key = "<TAB>";
      action = "<CMD>BufferLineCycleNext<CR>";
      mode = ["n"];
    }
    {
      key = "<S-TAB>";
      action = "<CMD>BufferLineCyclePrev<CR>";
      mode = ["n"];
    }

    {
      key = "<leader>j";
      action = "<C-f>";
      mode = ["n"];
    }
    {
      key = "<leader>k";
      action = "<C-b>";
      mode = ["n"];
    }
    {
      key = "gd";
      action = "<CMD>Telescope lsp_definitions<CR>";
      mode = ["n"];
    }
    {
      key = "gp";
      action = "<CMD>Telescope peek_definition<CR>";
      mode = ["n"];
    }
    {
      key = "gi";
      action = "<CMD>Telescope lsp_implementations<CR>";
      mode = ["n"];
    }
    {
      key = "gr";
      action = "<CMD>Telescope lsp_references<CR>";
      mode = ["n"];
    }
    {
      key = "gt";
      action = "<CMD>Telescope lsp_type_definitions<CR>";
      mode = ["n"];
    }
    {
      key = "gb";
      action = "<C-o>";
      mode = ["n"];
    }
    # Visual indent
    {
      key = "<";
      action = "<gv";
      mode = ["v"];
    }
    {
      key = ">";
      action = ">gv";
      mode = ["v"];
    }

    # System clipboard operations with Super key (macOS-like)
    # Super+C to copy in visual mode
    {
      key = "<D-c>";
      action = "\"+y";
      mode = ["v"];
      options = {
        noremap = true;
        silent = true;
        desc = "Copy to system clipboard";
      };
    }
    # Super+V to paste in normal mode
    {
      key = "<D-v>";
      action = "\"+p";
      mode = ["n"];
      options = {
        noremap = true;
        silent = true;
        desc = "Paste from system clipboard";
      };
    }
    # Super+V to paste in visual mode
    {
      key = "<D-v>";
      action = "\"+p";
      mode = ["v"];
      options = {
        noremap = true;
        silent = true;
        desc = "Paste from system clipboard";
      };
    }
    # Super+V to paste in insert mode
    {
      key = "<D-v>";
      action = "<C-r>+";
      mode = ["i"];
      options = {
        noremap = true;
        silent = true;
        desc = "Paste from system clipboard";
      };
    }
    # Super+X to cut in visual mode
    {
      key = "<D-x>";
      action = "\"+x";
      mode = ["v"];
      options = {
        noremap = true;
        silent = true;
        desc = "Cut to system clipboard";
      };
    }
  ];
}
