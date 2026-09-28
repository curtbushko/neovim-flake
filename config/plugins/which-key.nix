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
          __unkeyed-1 = "<leader>cg";
          group = "go";
          icon = {
            icon = "󰟓 ";
            color = "cyan";
          };
        }
        {
          __unkeyed-1 = "<leader>cgt";
          group = "tags";
          icon = {
            icon = "󰓹 ";
            color = "cyan";
          };
        }
        {
          __unkeyed-1 = "<leader>cz";
          group = "zig";
          icon = {
            icon = " ";
            color = "orange";
          };
        }
        {
          __unkeyed-1 = "<leader>ct";
          group = "test";
          icon = {
            icon = "󰙨 ";
            color = "green";
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
          group = "file explorer";
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
          __unkeyed-1 = "<leader>fb";
          group = "find buffers";
          icon = {
            icon = "";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>fe";
          group = "file explorer";
          icon = {
            icon = "󰙅 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>fg";
          group = "grep";
          icon = {
            icon = "󰑑 ";
            color = "yellow";
          };
        }
        {
          __unkeyed-1 = "<leader>fG";
          group = "grep (hidden)";
          icon = {
            icon = "󰑑 ";
            color = "yellow";
          };
        }

        {
          __unkeyed-1 = "<leader>g";
          group = "git";
          icon = {
            icon = "󰊢 ";
            color = "orange";
          };
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
          group = "herdr context";
          icon = {
            icon = "󰳆 ";
            color = "cyan";
          };
        }
        {
          __unkeyed-1 = "<leader>w";
          group = "wayfinder";
          icon = {
            icon = " ";
            color = "orange";
          };
        }
        {
          __unkeyed-1 = "<leader>wt";
          group = "trail";
          icon = {
            icon = "󰆋 ";
            color = "blue";
          };
        }
        {
          __unkeyed-1 = "<leader>wtn";
          group = "next trail";
          icon = {
            icon = " ";
            color = "blue";
          };
        }
        {
          __unkeyed-1 = "<leader>wtp";
          group = "previous trail";
          icon = {
            icon = " ";
            color = "blue";
          };
        }
      ];
    };
  };

  extraConfigLua = ''
    vim.schedule(function()
      require('which-key').add({
        -- Go subcommands
        { "<leader>cgs",  icon = { icon = "󰘦 ", color = "cyan" } },
        { "<leader>cgi",  icon = { icon = "󱁤 ", color = "cyan" } },
        { "<leader>cgta", icon = { icon = "󰐒 ", color = "cyan" } },
        { "<leader>cgtr", icon = { icon = "󰗊 ", color = "cyan" } },
        { "<leader>cgb",  icon = { icon = "󰗗 ", color = "cyan" } },
        { "<leader>cgr",  icon = { icon = "󰐊 ", color = "cyan" } },
        { "<leader>cgh",  icon = { icon = "󰛨 ", color = "cyan" } },
        -- Zig subcommands
        { "<leader>czb",  icon = { icon = "󰗗 ", color = "orange" } },
        { "<leader>czt",  icon = { icon = "󰙨 ", color = "orange" } },
        { "<leader>czr",  icon = { icon = "󰐊 ", color = "orange" } },
        { "<leader>czh",  icon = { icon = "󰛨 ", color = "orange" } },
        -- Test subcommands
        { "<leader>ctt",  icon = { icon = "󰙨 ", color = "green" } },
        { "<leader>ctf",  icon = { icon = "󰈙 ", color = "green" } },
        { "<leader>cts",  icon = { icon = "󰰐 ", color = "green" } },
        { "<leader>cto",  icon = { icon = "󰆍 ", color = "green" } },
      })
    end)
  '';
}
