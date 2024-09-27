{
  colorschemes = {
    tokyonight = {
      enable = true;
      settings.style = "night";
    };
  };

  globals = {
    mapleader = " ";
  };
  # Import all your configuration modules here
  imports = [
    # Basics
    ./keymaps.nix
    ./options.nix
    # Plugins
    ./plugins/alpha.nix
    ./plugins/avante.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/comment.nix
    ./plugins/flash.nix
    ./plugins/gitsigns.nix
    ./plugins/indent-blankline.nix
    ./plugins/lsp_lines.nix
    ./plugins/lsp.nix
    ./plugins/lspkind-nvim.nix
    ./plugins/lualine.nix
    ./plugins/markdown.nix
    ./plugins/mini.nix
    ./plugins/neo-tree.nix
    ./plugins/noice.nix
    ./plugins/telescope.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/treesitter.nix
    ./plugins/trouble.nix
    ./plugins/which-key.nix
    ./plugins/yanky.nix
    ./plugins/zig.nix
  ];
}
