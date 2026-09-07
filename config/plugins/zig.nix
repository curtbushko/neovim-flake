{
  plugins = {
    zig.enable = true;

    lsp.servers.zls.settings = {
      enable_build_on_save = true;
      build_on_save_step = "check";
      inlay_hints_show_variable_type_hints = true;
      inlay_hints_show_parameter_hints = true;
      inlay_hints_show_builtin = true;
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<leader>czb";
      action.__raw = "function() vim.cmd('botright split | terminal zig build') end";
      options.desc = "build";
    }
    {
      mode = "n";
      key = "<leader>czt";
      action.__raw = "function() vim.cmd('botright split | terminal zig build test') end";
      options.desc = "test";
    }
    {
      mode = "n";
      key = "<leader>czr";
      action.__raw = "function() vim.cmd('botright split | terminal zig build run') end";
      options.desc = "run";
    }
    {
      mode = "n";
      key = "<leader>czh";
      action.__raw = "function() vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = 0 }), { bufnr = 0 }) end";
      options.desc = "toggle inlay hints";
    }
  ];

  autoCmd = [
    {
      event = ["LspAttach"];
      pattern = "*.zig";
      callback.__raw = ''
        function(args)
          vim.lsp.inlay_hint.enable(true, { bufnr = args.buf })
        end
      '';
    }
  ];
}
