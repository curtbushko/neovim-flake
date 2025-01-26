{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        always_show_bufferline = true;
        show_buffer_icons = false;
        show_buffer_close_icons = false;
      };
    };
  };
  keymaps = [
    {
      key = "<leader>bb";
      action = "<CMD>Telescope buffers<CR>";
      options.desc = "Telescope Buffers";
      mode = ["n"];
    }
    {
      key = "<leader>bc";
      action = "<CMD>bd<CR>";
      options.desc = "Close Buffer";
      mode = ["n"];
    }
    {
      key = "<leader>bC";
      action = "<CMD>bdelete!<CR>";
      options.desc = "Force Close Buffer";
      mode = ["n"];
    }
    {
      key = "<leader>bo";
      action = "<CMD>BufferLineCloseOthers<CR>";
      options.desc = "Close Others";
      mode = ["n"];
    }
    {
      key = "<leader>bp";
      action = "<CMD>BufferLinePickClose<CR>";
      options.desc = "Pick to close";
      mode = ["n"];
    }
    {
      key = "<leader>bs";
      action = "<CMD>BufferLineSortByDirectory<CR>";
      options.desc = "Sort by directory";
      mode = ["n"];
    }
    {
      key = "<leader>bt";
      action = "<CMD>BufferLineSortByTabs<CR>";
      options.desc = "Sort by tabs";
      mode = ["n"];
    }
  ];
}
