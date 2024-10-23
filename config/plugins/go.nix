{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    lsp.servers.gopls = {
      enable = true;
      package = null;
      settings = {
        codelenses = {
          gc_details = false;
          generate = true;
          regenerate_cgo = true;
          run_govulncheck = true;
          test = true;
          tidy = true;
          upgrade_dependency = true;
          vendor = true;
        };
        hints = {
          assignVariableTypes = true;
          compositeLiteralFields = true;
          compositeLiteralTypes = true;
          constantValues = true;
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
        staticcheck = true;
        directoryFilters = [
          "-.git"
          "-.vscode"
          "-.idea"
          "-.vscode-test"
          "-node_modules"
        ];
        semanticTokens = true;
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
          "gofumpt"
        ];
      };
      formatters = {
        gofmt.command = lib.getExe' pkgs.go "gofmt";
        gofumpt.command = lib.getExe' pkgs.go "gofumt";
        goimports.command = lib.getExe' pkgs.gotools "goimports";
      };
    };
  };
}
