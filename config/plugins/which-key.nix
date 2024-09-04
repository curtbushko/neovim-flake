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
          group = "Next Buffer";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<S-TAB>";
          group = "Previous Buffer";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>:";
          group = "Command history";
          icon = {
            icon = ": ";
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
          group = "Buffers";
          icon = {
            icon = "";
            color = "cyan";
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
          group = "Explorer Neotree (cwd)";
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
          __unkeyed-1 = "<leader>o";
          group = "openai";
          icon = {
            icon = "󱚞 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>od";
          group = "docs";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>og";
          group = "go";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>oc";
          group = "chat";
          icon = {
            icon = "󰻞 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>os";
          group = "stop";
          icon = {
            icon = " ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>on";
          group = "new chat";
          icon = {
            icon = "󱐒 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>O";
          group = "obsidian";
          icon = {
            icon = " ";
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
      ];
    };
  };
}
