{
  pkgs,
  inputs,
  ...
}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "herdr-nvim";
      src = inputs.plugin-herdr-nvim;
    })
  ];

  extraConfigLua = ''
    require("herdr-nvim").setup({ keymaps = false })
  '';

  keymaps = [
    {
      key = "<leader>ac";
      action = "<CMD>Herdr comment<CR>";
      mode = ["n"];
      options.desc = "Comment line for Herdr";
    }
    {
      key = "<leader>ac";
      action = ":Herdr comment<CR>";
      mode = ["x"];
      options.desc = "Comment selection for Herdr";
    }
    {
      key = "<leader>al";
      action = "<CMD>Herdr list<CR>";
      mode = ["n"];
      options.desc = "List Herdr comments";
    }
    {
      key = "<leader>as";
      action = "<CMD>Herdr send<CR>";
      mode = ["n"];
      options.desc = "Paste comments to Herdr agent";
    }
    {
      key = "<leader>aS";
      action = "<CMD>Herdr submit<CR>";
      mode = ["n"];
      options.desc = "Submit comments to Herdr agent";
    }
    {
      key = "<leader>ai";
      action = "<CMD>Herdr ref<CR>";
      mode = ["n"];
      options.desc = "Reference line at Herdr agent cursor";
    }
    {
      key = "<leader>ai";
      action = ":Herdr ref<CR>";
      mode = ["x"];
      options.desc = "Reference selection at Herdr agent cursor";
    }
  ];
}
