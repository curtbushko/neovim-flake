{pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "render-markdown.nvim";
      version = "v7.0.0";
      src = pkgs.fetchFromGitHub {
        owner = "MeanderingProgrammer";
        repo = "render-markdown.nvim";
        rev = "v7.0.0";
        hash = "sha256-U1/6FLCfAkAm692nqMl1qQh6Z1og/Gqoe3NZpa5py9g=";
      };
    })
  ];

  extraConfigLua = ''
    require("render-markdown").setup({
      file_types = { "markdown", "Avante" },
      checkbox = {
        custom = {
          todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
          todo = { raw = "[>]", rendered = "󱞬 ", highlight = "RenderMarkdownTodo" },
        },
      },
    })
  '';
}
