{
  plugins.neo-tree = {
    enable = true;
  };
  keymaps = [
    {
      key = "<leader>e";
      action = "<CMD>Neotree .<CR>";
      options.desc = "Explorer Neotree (cwd)";
      mode = ["n"];
    }
    {
      key = "<leader>fe";
      action = "<CMD>Neotree .<CR>";
      options.desc = "Explorer Neotree (cwd)";
      mode = ["n"];
    }
  ];
}
