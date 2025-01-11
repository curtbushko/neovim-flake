{
  plugins.lsp = {
    enable = true;
    servers = {
      gopls = {
        enable = true;
        filetypes = ["go"];
        extraOptions = {
          settings = {
            experimentalPostfixCompletions = true;
            analyses = {
              unusedparams = true;
              shadow = true;
            };
            staticcheck = true;
          };
          init_options = {
            usePlaceholders = true;
          };
        };
      };
      clangd.enable = true;
      html.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
      pyright.enable = true;
      rust_analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      cmake.enable = true;
      bashls.enable = true;
      lua_ls.enable = true;
      nil_ls.enable = true;
      marksman.enable = true;
      terraformls.enable = true;
      yamlls.enable = true;
    };
    keymaps = {
      silent = true;
      lspBuf = {
        gd = {
          action = "definition";
          desc = "goto definition";
        };
        gr = {
          action = "references";
          desc = "goto references";
        };
        gD = {
          action = "declaration";
          desc = "goto declaration";
        };
        gI = {
          action = "implementation";
          desc = "goto implementation";
        };
        gT = {
          action = "type_definition";
          desc = "type definition";
        };
        K = {
          action = "hover";
          desc = "hover";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "workspace symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "rename";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = " code action";
        };
        # "<C-k>" = {
        #   action = "signature_help";
        #   desc = "Signature Help";
        # };
      };
      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "line diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "next diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "previous diagnostic";
        };
      };
    };
  };
  extraConfigLua = ''
    local _border = "rounded"

    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(
      vim.lsp.handlers.hover, {
        border = _border
      }
    )

    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
      vim.lsp.handlers.signature_help, {
        border = _border
      }
    )

    vim.diagnostic.config{
      float={border=_border}
    };

    require('lspconfig.ui.windows').default_options = {
      border = _border
    }
  '';
  # Fidget gives useful status update for LSP.
  plugins.fidget = {
    enable = true;
  };
}
