{
  colorschemes.tokyonight.enable = true;

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
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/flash.nix
    ./plugins/friendly-snippets.nix
    ./plugins/lsp_lines.nix
    ./plugins/lsp.nix
    ./plugins/lspkind-nvim.nix
    ./plugins/lualine.nix
    ./plugins/luasnip.nix
    ./plugins/markdown.nix
    ./plugins/mini.nix
    ./plugins/neo-tree.nix
    ./plugins/noice.nix
    ./plugins/telescope.nix
    ./plugins/treesitter-textobjects.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/treesitter.nix
    ./plugins/trouble.nix
    ./plugins/which-key.nix
    ./plugins/zig.nix
  ];
}
