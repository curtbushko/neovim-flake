_: {
  plugins.transparent.enable = true;

  # Load colorscheme from flair at runtime (includes lualine theme)
  extraConfigLuaPost = ''
    local flair_style = vim.fn.expand("~/.config/flair/style.lua")
    if vim.fn.filereadable(flair_style) == 1 then
      dofile(flair_style)
    else
      vim.notify("Flair style.lua not found at " .. flair_style, vim.log.levels.WARN)
    end
  '';

  # Disable base16 - flair provides the colorscheme
  colorschemes = {
    base16 = {
      enable = false;
    };
  };

  # Highlights provided by ~/.config/flair/style.lua
  highlight = {};
}
