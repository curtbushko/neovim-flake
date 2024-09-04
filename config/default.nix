{
  colorschemes.tokyonight.enable = true;

  globals = {
    mapleader = " ";
  };
  # Import all your configuration modules here
  imports = [
    # Basics
    ./keymaps.nix
    # Plugins
    ./plugins/alpha.nix
    ./plugins/bufferline.nix
    ./plugins/cmp-buffer.nix
    ./plugins/cmp-cmdline.nix
    ./plugins/cmp-emoji.nix
    ./plugins/cmp-git.nix
    ./plugins/cmp-path.nix
    ./plugins/cmp_luasnip.nix
    ./plugins/flash.nix
    ./plugins/friendly-snippets.nix
    ./plugins/lsp_lines.nix
    ./plugins/lspkind-nvim.nix
    ./plugins/luasnip.nix
    ./plugins/mini.nix
    ./plugins/neo-tree.nix
    ./plugins/noice.nix
    ./plugins/nvim-cmp.nix
    ./plugins/telescope.nix
    ./plugins/treesitter-textobjects.nix
    ./plugins/rainbow-delimiters.nix
    ./plugins/treesitter.nix
    ./plugins/trouble.nix
    ./plugins/which-key.nix
    ./plugins/zig.nix
  ];
}
