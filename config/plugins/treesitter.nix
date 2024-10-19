{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      disabledLanguages = [
        "ruby"
        "ada"
      ];
      ignore_install = [
        "ada"
      ];
    };
  };

  plugins.treesitter-textobjects = {
    enable = true;
  };
}
