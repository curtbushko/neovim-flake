{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent.enable = true;
      disabledLanguages = [
        "ada"
        "perl"
        "python"
        "ruby"
      ];
      ignore_install = [
        "ada"
        "perl"
        "python"
        "ruby"
      ];
    };
  };
}
