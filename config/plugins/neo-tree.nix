{
  plugins.neo-tree = {
    enable = true;
    settings = {
      close_if_last_window = true;
      filesystem = {
        filtered_items = {
          visible = true;
          hide_dotfiles = false;
          hide_gitignored = true;
          never_show = [ ".git" ];
        };
      };
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
