{
  # Fidget gives useful status update for LSP.
  plugins.yanky = {
    enable = true;
    enableTelescope = true;
  };
  keymaps = [
    {
      mode = "n";
      key = "<leader>y";
      action = "<cmd>Telescope yank_history<cr>";
      options.silent = true;
      options.desc = "yank history";
    }
  ];
}
