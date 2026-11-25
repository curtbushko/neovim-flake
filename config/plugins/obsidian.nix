{pkgs, ...}: {
  plugins.obsidian = {
    enable = true;
    # The vault is unavailable in Nix build sandboxes and on other machines.
    luaConfig.pre = ''
      if vim.fn.isdirectory(vim.fn.expand("~/workspace/github.com/curtbushko/kb")) == 1 then
    '';
    luaConfig.post = "end";
    settings = {
      legacy_commands = false;
      link.style = "markdown";
      workspaces = [
        {
          name = "kb";
          path = "~/workspace/github.com/curtbushko/kb";
        }
      ];
      new_notes_location = "notes_subdir";
      notes_subdir = "";
      note_id_func.__raw = ''
        function()
          return os.date("%Y%m%d-%H%M")
        end
      '';
      templates.folder = "templates";
      note.template = "new_note.md";
      callbacks.post_setup.__raw = ''
        function()
          local link_titles = (function()
            ${builtins.readFile ./obsidian-link-title.lua}
          end)()
          link_titles.setup()
          -- The built-in command prompts for an ID/path rather than a title.
          require("obsidian.actions").new = function(title, callback)
            local function create(value)
              if not value or vim.trim(value) == "" then
                return
              end
              local note = require("obsidian.note").create {
                title = vim.trim(value),
                template = Obsidian.opts.note.template,
              }
              -- Minute-resolution IDs can collide; never overwrite an existing note.
              if note.path:is_file() then
                vim.notify("A note already exists for this minute; try again next minute.", vim.log.levels.WARN)
                return
              end
              note = note:write()
              if callback then
                callback(note)
              end
            end
            if title and vim.trim(title) ~= "" then
              create(title)
            else
              vim.ui.input({ prompt = "Note title: " }, create)
            end
          end
        end
      '';
      daily_notes = {
        folder = "daily";
        template = "daily.md";
        date_format = "%Y%m%d";
        default_tags = ["daily"];
      };
      picker.name = "telescope.nvim";
      # Rendering is already handled by render-markdown.
      ui.enable = false;
    };
  };

  keymaps =
    map (binding: {
      mode = "n";
      key = "<leader>o${binding.key}";
      action = "<cmd>Obsidian ${binding.command}<cr>";
      options = {
        silent = true;
        desc = binding.desc;
      };
    }) [
      {
        key = "n";
        command = "new";
        desc = "New note";
      }
      {
        key = "q";
        command = "quick_switch";
        desc = "Quick switch";
      }
      {
        key = "s";
        command = "search";
        desc = "Search notes";
      }
      {
        key = "t";
        command = "today";
        desc = "Today's daily note";
      }
      {
        key = "y";
        command = "yesterday";
        desc = "Yesterday's daily note";
      }
      {
        key = "m";
        command = "tomorrow";
        desc = "Tomorrow's daily note";
      }
      {
        key = "d";
        command = "dailies";
        desc = "Browse daily notes";
      }
      {
        key = "b";
        command = "backlinks";
        desc = "Backlinks";
      }
      {
        key = "l";
        command = "links";
        desc = "Outgoing links";
      }
      {
        key = "f";
        command = "follow_link";
        desc = "Follow link";
      }
      {
        key = "T";
        command = "tags";
        desc = "Browse tags";
      }
    ];

  extraPackages = [pkgs.ripgrep];
}
