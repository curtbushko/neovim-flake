{
  plugins.lsp = {
    enable = true;
    capabilities = "capabilities.workspace.didChangeWatchedFiles.dynamicRegistration = true";
    servers = {
      clangd.enable = true;
      html.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
      pyright.enable = true;
      rust_analyzer = {
        enable = false;
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
      zls.enable = true;
    };
    keymaps = {
      silent = true;
      lspBuf = {
        gD = {
          action = "declaration";
          desc = "goto declaration";
        };
        K = {
          action = "hover";
          desc = "hover";
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
      extra = [
        {
          mode = "n";
          key = "gd";
          action.__raw = "require('telescope.builtin').lsp_definitions";
          options = {
            desc = "goto definition";
          };
        }
        {
          mode = "n";
          key = "gr";
          action.__raw = "require('telescope.builtin').lsp_references";
          options = {
            desc = "goto references";
          };
        }
        {
          mode = "n";
          key = "gI";
          action.__raw = "require('telescope.builtin').lsp_implementations";
          options = {
            desc = "goto implementation";
          };
        }
        {
          mode = "n";
          key = "gT";
          action.__raw = "require('telescope.builtin').lsp_type_definitions";
          options = {
            desc = "type definition";
          };
        }
        {
          mode = "n";
          key = "<leader>cw";
          action.__raw = "require('telescope.builtin').lsp_dynamic_workspace_symbols";
          options = {
            desc = "workspace symbols";
          };
        }
      ];
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
