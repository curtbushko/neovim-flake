_: {
  plugins.lualine = {
    enable = true;
    settings = {
      options = {
        globalstatus = true;
        component_separators = {
          left = "";
          right = "";
        };
        section_separators = {
          left = "";
          right = "";
        };
        # theme located in colorschemes.nix
      };
      sections = {
        lualine_a = ["mode"];
        lualine_b = ["branch"];
        lualine_c = ["filename"]; # add your center compoentnts here in place of this comment
        lualine_x = [];
        lualine_y = ["progress"];
        lualine_z = ["location"];
      };
      inactiveSections = {
        lualine_a = [];
        lualine_b = [];
        lualine_c = [];
        lualine_x = [];
        lualine_y = [];
        lualine_z = [];
      };
    };
  };
}
