{pkgs, ...}: let
  version = "7.0.0";
in {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname = "render-markdown.nvim";
      inherit (version) version;
      src = pkgs.fetchFromGitHub {
        owner = "MeanderingProgrammer";
        repo = "render-markdown.nvim";
        rev = "v${version}";
        hash = "sha256-U1/6FLCfAkAm692nqMl1qQh6Z1og/Gqoe3NZpa5py9g=";
      };
    })
  ];

  extraConfigLua = ''
    require("render-markdown").setup({
      checkbox = {
        custom = {
          todo = { raw = "[-]", rendered = "󰥔 ", highlight = "RenderMarkdownTodo" },
          todo = { raw = "[>]", rendered = "󱞬 ", highlight = "RenderMarkdownTodo" },
        },
      },
    })
  '';
}
