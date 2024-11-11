{
  config = {
    globals.mapleader = " ";
    globals.maplocalLeader = ",";
    opts = {
      number = true;
      relativenumber = true;
      splitright = true;
      splitbelow = true;
      wrap = false;
      expandtab = true;
      autoindent = true;
      smartindent = true;
      smartcase = true;
      cindent = true;
      infercase = true;
      cursorline = true;
      tabstop = 2;
      shiftwidth = 2;
      incsearch = true;
      inccommand = "split";
      ignorecase = true;
      clipboard = { 
        providers.wl-copy.enable = true;
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
        eol = "¬";
      };
      ruler = true;
      showcmd = true;
    };
  };
}
