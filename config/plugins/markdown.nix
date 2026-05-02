{
  plugins.render-markdown = {
    enable = true;
    settings = {
      heading = {
        icons = ["󰎦 " "󰎩 " "󰎬 " "󰎮 " "󰎰 " "󰎵 "];
        backgrounds = ["RenderMarkdownBg"];
        foregrounds = [
          "RenderMarkdownH1"
          "RenderMarkdownH2"
          "RenderMarkdownH3"
          "RenderMarkdownH4"
          "RenderMarkdownH5"
          "RenderMarkdownH6"
        ];
      };
      code = {
        conceal_delimiters = false;
        border = "none";
      };
      bullet = {
        icons = ["·" "‣" "•" "▪"];
      };
      checkbox = {
        unchecked = {highlight = "RenderMarkdownTodo";};
        checked = {highlight = "RenderMarkdownTodo";};
        custom = {
          todo = {
            raw = "[>]";
            rendered = "󱞬 ";
            highlight = "RenderMarkdownTodo";
          };
          pending = {
            raw = "[-]";
            rendered = "󰥔 ";
            highlight = "RenderMarkdownTodo";
          };
          important = {
            raw = "[!]";
            rendered = " ";
            highlight = "RenderMarkdownWarning";
          };
          cancel = {
            raw = "[/]";
            rendered = "󱋬 ";
            highlight = "RenderMarkdownTodo";
          };
        };
      };
    };
  };
}
