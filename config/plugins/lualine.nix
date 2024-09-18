{
  plugins.lualine = {
    enable = true;
    globalstatus = true;

    componentSeparators = {
      left = "";
      right = "";
    };
    sectionSeparators = {
      left = "";
      right = "";
    };
    sections = {
      lualine_a = [
        {
          name = "mode";
          padding = {
            right = 1;
            left = 1;
          };
        }
      ];
      lualine_b = [
        {
          name = "branch";
          separator.right = "";
          padding = {
            right = 1;
            left = 1;
          };
        }
      ];
      lualine_c = [
        {
          name = "filename";
          separator.right = "";
          padding = {
            right = 1;
            left = 1;
          };
        }
      ]; # add your center compoentnts here in place of this comment
      lualine_x = [];
      lualine_y = [
        {
          name = "progress";
          separator.left = "";
        }
      ];
      lualine_z = [
        {
          name = "location";
          separator.left = "";
          padding = {
            right = 1;
            left = 1;
          };
        }
      ];
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
}
