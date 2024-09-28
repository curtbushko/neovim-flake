{...}: let
  fg = "#dfe9ff";
  fg_dark = "#a9b1d6";
  fg_gutter = "#3b4261";
  bg = "#1a1b26";
  bg_dark = "#16161e";
  yellow = "#FFEE";
  green1 = "#00b0fc";
  green2 = "#019ef3";
  teal = "#65bf";
  blue = "#7aa2f7";
  blue2 = "#7aa2f7";
  git.add = "#7ea454";
  prompt = "#2d3149";
  orange = "#ff9e64";
in {

  colorschemes = {
    tokyonight = {
      enable = true;
      settings.style = "night";
    };
  };

  highlightOverride = {
    FloatBorder = {
      bg = bg_dark;
      fg = green1;
    };
    TelescopeNormal = {
      bg = bg_dark;
      fg = fg_dark;
    };
    TelescopeBorder = {
      bg = bg_dark;
      fg = bg_dark;
    };
    TelescopePromptNormal = {
      bg = prompt;
      fg = green1;
    };
    TelescopePromptBorder = {
      bg = prompt;
      fg = prompt;
    };
    TelescopePromptTitle = {
      bg = fg_gutter;
      fg = orange;
    };
    TelescopePreviewTitle = {
      bg = bg_dark;
      fg = orange;
    };
    TelescopeResultsTitle = {
      bg = bg_dark;
      fg = orange;
    };
    NoicePopupBorder = {
      fg = orange;
    };
    NoicePopupmenuBorder = {
      fg = orange;
    };
    NoiceCmdlinePopupBorder = {
      fg = orange;
    };
    NoiceCmdlineIcon = {
      fg = blue;
    };
  };
}
