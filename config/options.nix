{
  clipboard.register = "unnamedplus"; # Use system clipboard
  opts = {
    clipboard = "unnamedplus";
    autoread = false;
    autowrite = true; # Enable auto write
    backup = false;
    breakindent = true; # Maintain indent when wrapping
    completeopt = ["menu" "menuone" "noselect"];
    conceallevel = 1; # Hide * markup for bold and italic
    confirm = true; # Confirm to save changes before exiting modified buffer
    copyindent = true;
    cursorline = true; # Enable highlighting of the current line
    expandtab = true; # Use spaces instead of tabs
    ignorecase = true; # Case insensitive search
    inccommand = "nosplit"; # preview incremental substitute
    incsearch = true;
    laststatus = 3; # No status line
    list = true; # Show some invisible characters (tabs...
    listchars = "tab:» ,space: ,extends:→,precedes:←,nbsp:␣,trail:•";
    linebreak = true; # Don't cut words while wrapping
    mouse = "a"; # Enable mouse mode
    mousescroll = "ver:1,hor:6";
    number = true; # Print line number
    preserveindent = true; # Preserve indent structure as much as possible
    pumblend = 10; # Popup blend
    pumheight = 10; # Maximum number of entries in a popup
    relativenumber = true; # Relative line numbers
    scrolloff = 8; # Lines of context
    sidescrolloff = 8; # Columns of context
    #signcolumn = "yes"; # Always show sign column
    shiftround = true; # Round indent
    shiftwidth = 2; # Size of an indent
    showmode = false; # Dont show mode since we have a statusline
    showtabline = 2; # always display tabline
    smartcase = true; # Don't ignore case with capitals
    smartindent = true; # Insert indents automatically
    splitbelow = true; # Put new windows below current
    splitright = true; # Put new windows right of current
    swapfile = false; # Disable use of swapfile for the buffer
    tabstop = 2; # Number of spaces tabs count for
    termguicolors = true; # True color support
    textwidth = 120;
    timeoutlen = 300;
    undofile = true;
    undolevels = 10000;
    updatetime = 50; # Save swap file and trigger CursorHold
    winminwidth = 5; # Minimum window width
    wrap = false; # Disable line wrap
    writebackup = false; # Disable making a backup before overwriting a file
  };
}
