{
  plugins.which-key = {
    enable = true;

    settings = {
      #ignoreMissing = false;
      icons = {
        breadcrumb = "»";
        group = "+";
        separator = ""; # ➜
      };
      spec = [
        {
          __unkeyed-1 = "<TAB>";
          group = "next buffer";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<S-TAB>";
          group = "previous buffer";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>:";
          group = "command history";
          icon = {
            icon = ": ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>;";
          group = "arrow";
          icon = {
            icon = "󱡁 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader><space>";
          group = "find files";
          icon = {
            icon = "󰍉 ";
            color = "yellow";
          };
        }

        {
          __unkeyed-1 = "<leader>m";
          group = "marks (buffer)";
          icon = {
            icon = "󰙒 ";
            color = "yellow";
          };
        }

        {
          __unkeyed-1 = "<leader>j";
          group = "screen down";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>k";
          group = "screen up";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "buffers";
          icon = {
            icon = "";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>c";
          group = "code";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>D";
          group = "devdocs";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>e";
          group = "explore Neotree";
          icon = {
            icon = "󰙅 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>f";
          group = "find";
          icon = {
            icon = "󰙅 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>g";
          group = "git";
        }

        {
          __unkeyed-1 = "<leader>h";
          group = "harpoon";
          icon = {
            icon = "󱡀 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "terminal (float)";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>u";
          group = "ui";
          icon = {
            icon = "󰍗 ";
            color = "orange";
          };
        }
        {
          __unkeyed-1 = "<leader>y";
          group = "yanky";
          icon = {
            icon = " ";
            color = "orange";
          };
        }
        {
          __unkeyed-1 = "<leader>a";
          group = "99";
          icon = {
            icon = "󱚝 ";
            color = "orange";
          };
        }
      ];
    };
  };
}
