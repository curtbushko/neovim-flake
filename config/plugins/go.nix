{
  lib,
  pkgs,
  ...
}: {
  plugins = {
    lsp.servers.gopls.enable = true;
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
