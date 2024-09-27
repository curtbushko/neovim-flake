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
  ];
}
