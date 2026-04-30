{pkgs, inputs, ...}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "wayfinder";
      src = inputs.plugin-wayfinder;
    })
  ];

  extraConfigLua = ''
    require("wayfinder").setup()
  '';

  keymaps = [
    {
      key = "<leader>wf";
      action = "<Plug>(WayfinderOpen)";
      options.desc = "wayfinder";
      mode = ["n"];
    }
    {
      key = "<leader>wtn";
      action = "<Plug>(WayfinderTrailNext)";
      options.desc = "trail next";
      mode = ["n"];
    }
    {
      key = "<leader>wtp";
      action = "<Plug>(WayfinderTrailPrev)";
      options.desc = "trail prev";
      mode = ["n"];
    }
    {
      key = "<leader>wto";
      action = "<Plug>(WayfinderTrailOpen)";
      options.desc = "trail open";
      mode = ["n"];
    }
    {
      key = "<leader>wts";
      action = "<Plug>(WayfinderTrailShow)";
      options.desc = "trail show";
      mode = ["n"];
    }
  ];
}
