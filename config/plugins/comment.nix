{
  plugins = {
    comment = {
      enable = true;
      settings = {
        pre_hook = "require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()";
        mappings = false;
      };
    };
    ts-context-commentstring.enable = true;
    todo-comments = {
      enable = true;
      settings = {
        highlight.pattern = ".*<(KEYWORDS)\\s*";
        search.pattern = "\\b(KEYWORDS)\\b";
      };
    };
  };
  keymaps = [
    {
      mode = ["n" "i"];
      key = "<leader>/";
      action = "<cmd>lua require('Comment.api').locked('toggle.linewise.current')()<CR>";
      options = {desc = " comment toggle";};
    }
    {
      mode = ["v"];
      key = "<leader>/";
      action = "<ESC><cmd>lua require('Comment.api').locked('toggle.linewise')(vim.fn.visualmode())<CR>";
      options = {desc = " comment toggle";};
    }
  ];
}
