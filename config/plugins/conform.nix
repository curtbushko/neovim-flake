{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formattersByFt = {
        "*" = [["codespell"]];
        "_" = [["trim_whitespace"]];
        go = [["goimports" "golines" "gofmt" "gofumpt"]];
        javascript = [["prettierd"]];
        json = [["jq"]];
        lua = [["stylua"]];
        markdown = [["prettierd"]];
        nix = [["alejandra"]];
        python = [["isort" "black"]];
        sh = [["shfmt"]];
        terraform = [["terraform_fmt"]];
        typescript = [["prettierd"]];
        yaml = [["prettierd"]];
        zig = [["zigfmt"]];
      };
    };
  };
  extraPackages = with pkgs; [
    stylua
  ];
  keymaps = [
    {
      mode = "";
      key = "<leader>cf";
      action.__raw = ''
        function()
          require('conform').format { async = true, lsp_fallback = true }
        end
      '';
      options = {
        desc = "format buffer";
      };
    }
  ];
}
