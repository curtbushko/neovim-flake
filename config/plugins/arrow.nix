{
  plugins.arrow = {
    enable = true;
    settings = {
      leader_key = ";";
      buffer_leader_key = "m";
      mappings = {
        toggle = "s";
        delete_mode = "d";
        next_item = "j";
        prev_item = "k";
      };
      per_buffer_config = {
        lines = 7;
      };
      window = {
        border = "single";
      };
    };
  };
  keymaps = [
    {
      mode = ["n"];
      key = "mj";
      action = "<cmd>Arrow next_buffer_bookmark<CR>";
      options = {desc = "next buffer bookmark";};
    }
    {
      mode = ["n"];
      key = "mk";
      action = "<cmd>Arrow prev_buffer_bookmark<CR>";
      options = {desc = "previous buffer bookmark";};
    }
    {
      mode = ["n"];
      key = "mm";
      action = "<cmd>Arrow toggle_current_line_for_buffer<CR>";
      options = {desc = "toggle current line for buffer";};
    }

  ];
}
