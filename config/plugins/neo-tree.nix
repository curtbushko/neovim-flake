{
  plugins.neo-tree = {
    enable = true;
    closeIfLastWindow = true;
    extraOptions = {
      filesystem = {
        filtered_items = {
          visible = true;
          hide_dotfiles = false;
          hide_gitignored = true;
          never_show = [ ".git" ];
        };
      };
    };
    settings = {
      window = {
        mappings = {
          "<space>" = "none";
        };
      };
    };
  };
  keymaps = [
    {
      key = "<leader>e";
      action = "<CMD>Neotree . toggle<CR>";
      options.desc = "explore Neotree";
      mode = ["n"];
    }
    {
      key = "<leader>fe";
      action = "<CMD>Neotree . toggle<CR>";
      options.desc = "explore Neotree";
      mode = ["n"];
    }
  ];
}
