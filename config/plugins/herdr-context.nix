{
  pkgs,
  inputs,
  ...
}: {
  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "herdr-context.nvim";
      src = inputs.plugin-herdr-context;
    })
  ];

  extraConfigLua = ''
    require("herdr-context").setup({})
  '';

  keymaps = [
    {
      key = "<leader>aa";
      action = "<CMD>HerdrContextAgents<CR>";
      options.desc = "Toggle Herdr Agents";
      mode = ["n"];
    }
    {
      key = "<leader>ac";
      action = "<CMD>HerdrContextCompose<CR>";
      options.desc = "Compose Herdr Context";
      mode = ["n"];
    }
    {
      key = "<leader>ac";
      action = ":HerdrContextCompose<CR>";
      options.desc = "Compose Herdr Context";
      mode = ["x"];
    }
    {
      key = "<leader>ad";
      action = "<CMD>HerdrContextDiagnostics<CR>";
      options.desc = "Send Diagnostics to Herdr Agent";
      mode = ["n"];
    }
    {
      key = "<leader>ad";
      action = ":HerdrContextDiagnostics<CR>";
      options.desc = "Send Diagnostics to Herdr Agent";
      mode = ["x"];
    }
    {
      key = "<leader>aD";
      action = ":HerdrContextDelegate ";
      options.desc = "Delegate Herdr Context";
      mode = ["n" "x"];
    }
    {
      key = "<leader>ae";
      action = "<CMD>HerdrContextExplainAgent<CR>";
      options.desc = "Explain Herdr Agent";
      mode = ["n"];
    }
    {
      key = "<leader>ah";
      action = "<CMD>HerdrContextHunk<CR>";
      options.desc = "Stage Git Hunk";
      mode = ["n"];
    }
    {
      key = "<leader>aH";
      action = "<CMD>HerdrContextHistory<CR>";
      options.desc = "Herdr Context History";
      mode = ["n"];
    }
    {
      key = "<leader>al";
      action = "<CMD>HerdrContextLocationList<CR>";
      options.desc = "Stage Location List";
      mode = ["n"];
    }
    {
      key = "<leader>ap";
      action = "<CMD>HerdrContextPrompt<CR>";
      options.desc = "Prompt Herdr with Code Context";
      mode = ["n"];
    }
    {
      key = "<leader>ap";
      action = ":HerdrContextPrompt<CR>";
      options.desc = "Prompt Herdr with Code Context";
      mode = ["x"];
    }
    {
      key = "<leader>aq";
      action = "<CMD>HerdrContextQuickfix<CR>";
      options.desc = "Stage Quickfix List";
      mode = ["n"];
    }
    {
      key = "<leader>ar";
      action = "<CMD>HerdrContextRefresh<CR>";
      options.desc = "Refresh Herdr Agents";
      mode = ["n"];
    }
    {
      key = "<leader>as";
      action = "<CMD>HerdrContextSymbol<CR>";
      options.desc = "Stage Current Symbol";
      mode = ["n"];
    }
    {
      key = "<leader>at";
      action = "<CMD>HerdrContextTarget<CR>";
      options.desc = "Select Herdr Agent";
      mode = ["n"];
    }
    {
      key = "<leader>ay";
      action = "<CMD>HerdrContextReference<CR>";
      options.desc = "Send Reference to Herdr Agent";
      mode = ["n"];
    }
    {
      key = "<leader>ay";
      action = ":HerdrContextReference<CR>";
      options.desc = "Send Reference to Herdr Agent";
      mode = ["x"];
    }
    {
      key = "<leader>aY";
      action = "<CMD>HerdrContextSend<CR>";
      options.desc = "Send Context to Herdr Agent";
      mode = ["n"];
    }
    {
      key = "<leader>aY";
      action = ":HerdrContextSend<CR>";
      options.desc = "Send Context to Herdr Agent";
      mode = ["x"];
    }
  ];
}
