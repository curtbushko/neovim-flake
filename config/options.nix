{
  clipboard.register = "unnamedplus"; # Use system clipboard
  opts = {
    # Indentation
    tabstop = 4; # Tab size
    softtabstop = 4; # Cursed tab size
    shiftwidth = 4; # Indent key amount
    expandtab = true; # Tabs as spaces
    breakindent = true; # Maintain indent when wrapping
    linebreak = true; # Don't cut words while wrapping
    shiftround = true; # Might not be needed
    copyindent = true; # Might not be needed
    foldlevel = 20; # Nested level to start folding

    # Disable backups
    backup = false;
    writebackup = false;
    swapfile = false; # No swap files
    undofile = false; # No undo files
    scrolloff = 16; # Lines of context

    # Misc.
    number = true; # Line numbers
    ignorecase = true; # Case insensitive search
    smartcase = true; # Sensitive if search has caps
    hlsearch = false; # Removes search highlight
    cmdheight = 0; # No command line height
    laststatus = 3; # No status line
    signcolumn = "yes"; # Always show sign column
    completeopt = ["menu" "menuone" "noselect"];
  };
}
