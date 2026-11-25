{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        always_show_bufferline = true;
        name_formatter.__raw = ''
          function(buffer)
            return require("markdown_buffer_title").format(buffer)
          end
        '';
        show_buffer_icons = false;
        show_buffer_close_icons = false;
        show_close_icon = false;
        modified_icon = "";
        separator_style = ["" ""];
        themable = true;
        indicator = {
          style = "icon";
          icon = "▎";
        };
      };
    };
  };
  extraConfigLuaPre = ''
    package.preload["markdown_buffer_title"] = function()
      ${builtins.readFile ./markdown-buffer-title.lua}
    end
  '';

  autoCmd = [
    {
      event = ["TextChanged" "TextChangedI" "BufWritePost"];
      pattern = ["*.md" "*.markdown"];
      command = "redrawtabline";
    }
  ];

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
