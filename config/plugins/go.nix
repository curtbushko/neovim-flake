{
  lib,
  pkgs,
  ...
}: {
  extraPlugins = with pkgs.vimPlugins; [
    go-nvim
    guihua-lua
  ];

  extraConfigLua = ''
    require('go').setup({
      lsp_cfg = false,
      lsp_on_attach = false,
      dap_debug = false,
      lsp_inlay_hints = { enable = false },
      diagnostic = { hdlr = false },
      gofmt = 'gofumpt',
      max_line_len = 120,
      icons = false,
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>cgs";
      action = "<cmd>GoFillStruct<cr>";
      options.desc = "fill struct";
    }
    {
      mode = "n";
      key = "<leader>cgi";
      action = "<cmd>GoImpl<cr>";
      options.desc = "implement interface";
    }
    {
      mode = "n";
      key = "<leader>cgta";
      action = "<cmd>GoAddTag<cr>";
      options.desc = "add tag";
    }
    {
      mode = "n";
      key = "<leader>cgtr";
      action = "<cmd>GoRmTag<cr>";
      options.desc = "remove tag";
    }
    {
      mode = "n";
      key = "<leader>cgb";
      action.__raw = "function() vim.cmd('botright split | terminal go build ./...') end";
      options.desc = "build";
    }
    {
      mode = "n";
      key = "<leader>cgr";
      action.__raw = "function() vim.cmd('botright split | terminal go run .') end";
      options.desc = "run";
    }
    {
      mode = "n";
      key = "<leader>cgh";
      action.__raw = "function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 }) end";
      options.desc = "toggle inlay hints";
    }
  ];

  plugins = {
    lsp.servers.gopls = {
      enable = true;
      settings.gopls = {
        gofumpt = true;
        codelenses = {
          gc_details = false;
          generate = true;
          regenerate_cgo = true;
          run_govulncheck = false;
          test = true;
          tidy = true;
          upgrade_dependency = true;
          vendor = true;
        };
        hints = {
          assignVariableTypes = true;
          compositeLiteralFields = false;
          compositeLiteralTypes = false;
          constantValues = false;
          functionTypeParameters = true;
          parameterNames = true;
          rangeVariableTypes = true;
        };
        analyses = {
          fieldalignment = true;
          nilness = true;
          unusedparams = true;
          unusedwrite = true;
          useany = true;
        };
        usePlaceholders = true;
        completeUnimported = true;
        staticcheck = false;
        directoryFilters = ["-.git" "-.vscode" "-.idea" "-.vscode-test" "-node_modules"];
        semanticTokens = false;
      };
    };

    conform-nvim.settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formatters_by_ft = {
        go = [
          "goimports"
          "gofmt"
        ];
      };
      formatters = {
        gofmt.command = lib.getExe' pkgs.go "gofmt";
        goimports.command = lib.getExe' pkgs.gotools "goimports";
      };
    };
  };
}
