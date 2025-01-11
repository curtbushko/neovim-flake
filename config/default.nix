{
  globals = {
    mapleader = " ";
    loaded_ruby_provider = 0; # Ruby
    loaded_perl_provider = 0; # Perl
    loaded_python_provider = 0; # Python 2
    loaded_python3_provider = 0; # Python 3 
  };

  performance = {
    byteCompileLua.enable = true;
    byteCompileLua.configs = true;
    byteCompileLua.nvimRuntime = true;
    byteCompileLua.plugins = true;
    combinePlugins.enable = true;
    combinePlugins.standalonePlugins = [
      "nvim-treesitter"
      "nvim-treesitter-textobjects"
      "nvim-config"
    ];
  };
  # Import all your configuration modules here
  imports = [
    # Basics
    ./keymaps.nix
    ./options.nix
    ./colorschemes.nix
    # Plugins
    ./plugins/alpha.nix
    ./plugins/arrow.nix
    ./plugins/avante.nix
    ./plugins/bufferline.nix
    ./plugins/cmp.nix
    ./plugins/conform.nix
    ./plugins/comment.nix
    ./plugins/flash.nix
    ./plugins/gitsigns.nix
    ./plugins/go.nix
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
