{
  plugins.treesitter = {
    enable = true;
    settings = {
      indent = {
        enable = true;
        disable = ["markdown" "markdown_inline"];
      };
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
