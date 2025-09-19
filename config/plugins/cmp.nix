{pkgs, ...}: {
  plugins = {
    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        completion.completeopt = "noinsert";
        preselect = "cmp.PreselectMode.None";
        experimental.ghost_text = true;
        snippet.expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        formatting = {fields = ["abbr" "kind" "menu"];};
        sources = [
          {
            name = "luasnip";
            keyword_length = 3;
          }
          {
            name = "nvim_lsp";
            keyword_length = 3;
          }
          {
            name = "nvim_lsp_signature_help";
          }
          {
            name = "buffer";
            keyword_length = 3;
          }
          {
            name = "path";
            keyword_length = 3;
          }
        ];
        window = {
          completion = {
            border = "rounded";
            winhighlight = "Normal:Normal,FloatBorder:FloatBorder,CursorLine:Visual,Search:None";
          };
          documentation = {border = "rounded";};
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Up>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Down>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-n>" = "cmp.mapping.select_next_item()";
          "<C-e>" = "cmp.mapping.select_prev_item()";
          #"<ESC>" = "cmp.mapping.abort()";
          "<C-v>" = "cmp.mapping.scroll_docs(-4)";
          "<C-t>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
        };
      };
    };

    cmp-buffer.enable = true;
    cmp-cmdline.enable = true;
    cmp-git.enable = true;
    cmp-nvim-lsp.enable = true;
    cmp-nvim-lsp-signature-help.enable = true; #shows function signature while typing
    cmp-path.enable = true;
    cmp-treesitter.enable = true;
    cmp_luasnip.enable = true;

    nvim-snippets.enable = true;
    friendly-snippets.enable = true;
    luasnip = {
      enable = true;
      settings = {
        lazyLoad = false;
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
      fromVscode = [
        {
          lazyLoad = false;
        }
        {
          lazyLoad = false;
          paths = "${pkgs.vimPlugins.friendly-snippets}";
        }
        {
          lazyLoad = false;
          paths = ./snippets;
        }
      ];
    };
  };

  extraConfigLua = ''
    luasnip = require("luasnip")
        kind_icons = {
            Namespace = "󰌗",
            Text = "󰉿",
            Method = "󰆧",
            Function = "󰆧",
            Constructor = "",
            Field = "󰜢",
            Variable = "󰀫",
            Class = "󰠱",
            Interface = "",
            Module = "",
            Property = "󰜢",
            Unit = "󰑭",
            Value = "󰎠",
            Enum = "",
            Keyword = "󰌋",
            Snippet = "",
            Color = "󰏘",
            File = "󰈚",
            Reference = "󰈇",
            Folder = "󰉋",
            EnumMember = "",
            Constant = "󰏿",
            Struct = "󰙅",
            Event = "",
            Operator = "󰆕",
            TypeParameter = "󰊄",
            Table = "",
            Object = "󰅩",
            Tag = "",
            Array = "[]",
            Boolean = "",
            Number = "",
            Null = "󰟢",
            String = "󰉿",
            Calendar = "",
            Watch = "󰥔",
            Package = "",
            Codeium = "",
            TabNine = "",
        }
    --local cmp = require 'cmp'

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline({'/', "?" }, {
        sources = {
        { name = 'buffer' }
        }
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
        sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
        }, {
        { name = 'buffer' },
        })
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
        sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
      }),
    })
  '';
}
