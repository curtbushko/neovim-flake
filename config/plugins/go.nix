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
