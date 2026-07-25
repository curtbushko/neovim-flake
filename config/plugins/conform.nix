{pkgs, ...}: {
  plugins.conform-nvim = {
    enable = true;
    settings = {
      format_on_save = {
        lspFallback = true;
        timeoutMs = 500;
      };
      formattersByFt = {
        "_" = [["trim_whitespace"]];
        go = [["codespell"] ["goimports" "gofmt"]];
        javascript = [["prettierd"]];
        json = [["jq"]];
        lua = [["codespell"] ["stylua"]];
        markdown = [["prettierd"]];
        nix = [["codespell"] ["alejandra"]];
        python = [["isort" "black"]];
        sh = [["codespell"] ["shfmt"]];
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
