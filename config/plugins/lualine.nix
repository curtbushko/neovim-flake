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
        lualine_c = [
          {
            __unkeyed-1 = "filename";
            path = 1; # 0 = just filename, 1 = relative path, 2 = absolute path, 3 = absolute with tilde
            shorting_target = 40; # Leaves 40 spaces in the window for other components
          }
        ];
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
