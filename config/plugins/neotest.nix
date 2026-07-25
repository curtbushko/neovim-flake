{pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    neotest
    neotest-go
    neotest-zig
    nvim-nio
  ];

  extraConfigLua = ''
    require('neotest').setup({
      adapters = {
        require('neotest-go')({
          experimental = {
            test_table = true,
          },
        }),
        require('neotest-zig')({}),
      },
    })
  '';

  keymaps = [
    {
      mode = "n";
      key = "<leader>ctt";
      action.__raw = "function() require('neotest').run.run() end";
      options.desc = "run nearest test";
    }
    {
      mode = "n";
      key = "<leader>ctf";
      action.__raw = "function() require('neotest').run.run(vim.fn.expand('%')) end";
      options.desc = "run file";
    }
    {
      mode = "n";
      key = "<leader>cts";
      action.__raw = "function() require('neotest').summary.toggle() end";
      options.desc = "toggle summary";
    }
    {
      mode = "n";
      key = "<leader>cto";
      action.__raw = "function() require('neotest').output.open({ enter = true }) end";
      options.desc = "show output";
    }
  ];
}
