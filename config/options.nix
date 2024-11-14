{
  config = {
    globals.mapleader = " ";
    globals.maplocalleader = ",";
    opts = {
      shortmess = "ltToOCFI";
      number = true; # Line numbers
      relativenumber = true; # Relative line numbers
      splitright = true; # Split right
      splitbelow = true; # Split below
      wrap = false; # No wrap
      expandtab = true; # Use spaces instead of tabs
      autoindent = true; # Auto indent
      smartindent = true; # Smart indent
      smartcase = true; # Smart case
      cindent = true; # C indent
      infercase = true;
      cursorline = true;
      tabstop = 2;
      shiftwidth = 2;
      incsearch = true;
      inccommand = "split";
      ignorecase = true;
      clipboard = { 
        register = "unnamedplus";
      };
      scrolloff = 999;
      virtualedit = "block";
      undofile = true;
      termguicolors = true;
      swapfile = false;
      pumblend = 10;
      conceallevel = 1;
      foldlevelstart = 99;
      list = true;
      listchars = {
        tab = "▸ ";
        trail = "•";
        extends = "❯";
        precedes = "❮";
        # eol = "¬";
      };
      ruler = true;
      showcmd = true;
    };
  };
}
