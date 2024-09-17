{
  plugins.lsp = {
    enable = true;
    servers = {
      gopls.enable = true;
      clangd.enable = true;
      html.enable = true;
      nixd.enable = true;
      pylsp.enable = true;
      pyright.enable = true;
      rust-analyzer = {
        enable = true;
        installCargo = false;
        installRustc = false;
      };
      cmake.enable = true;
      bashls.enable = true;
      lua-ls.enable = true;
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
          desc = "Goto Definition";
        };
        gr = {
          action = "references";
          desc = "Goto References";
        };
        gD = {
          action = "declaration";
          desc = "Goto Declaration";
        };
        gI = {
          action = "implementation";
          desc = "Goto Implementation";
        };
        gT = {
          action = "type_definition";
          desc = "Type Definition";
        };
        K = {
          action = "hover";
          desc = "Hover";
        };
        "<leader>cw" = {
          action = "workspace_symbol";
          desc = "Workspace Symbol";
        };
        "<leader>cr" = {
          action = "rename";
          desc = "Rename";
        };
        "<leader>ca" = {
          action = "code_action";
          desc = "Code Action";
        };
        # "<C-k>" = {
        #   action = "signature_help";
        #   desc = "Signature Help";
        # };
      };
      diagnostic = {
        "<leader>cd" = {
          action = "open_float";
          desc = "Line Diagnostics";
        };
        "[d" = {
          action = "goto_next";
          desc = "Next Diagnostic";
        };
        "]d" = {
          action = "goto_prev";
          desc = "Previous Diagnostic";
        };
      };
    };
  };
}
