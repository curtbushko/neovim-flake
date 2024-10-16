_: let
  colors = import ../colors/rebel-scum.nix {};
in {
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
        theme = {
          normal = {
            a = {
              bg = colors.bright_blue;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.bright_aqua;
            };
          };
          insert = {
            a = {
              bg = colors.bright_yellow;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.light0;
            };
          };
          visual = {
            a = {
              bg = colors.bright_green;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.bright_aqua;
            };
          };
          replace = {
            a = {
              bg = colors.bright_red;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.bright_aqua;
            };
          };
          command = {
            a = {
              bg = colors.bright_purple;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.bright_aqua;
            };
          };
          inactive = {
            a = {
              bg = colors.bright_aqua;
              fg = colors.dark0;
            };
            b = {
              bg = colors.bright_orange;
              fg = colors.dark1;
            };
            c = {
              bg = colors.dark0;
              fg = colors.light3;
            };
          };
        };
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
