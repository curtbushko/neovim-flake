{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      disabledLanguages = [
        "ruby"
      ];
    };
  };

  plugins.treesitter-textobjects = {
    enable = true;
  };
}
