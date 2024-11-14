{self, ...}:{
  keymaps = [

    ## General ##
    # Select all
    {
      mode = "n";
      key = "<C-a>";
      action = "ggVG";
      options = {
        desc = "Select all";
      };
    }

    # Use backspace to go to previous buffer
    {
      mode = "n";
      key = "<BS>";
      action = "<C-^>";
      options = {
        desc = "Previous buffer";
      };
    }
    # Escape to clear highlights
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>noh<CR>";
      options = {
        desc = "Clear highlights";
        silent = true;
      };
    }

    # Bind j and k to gj and gk
    {
      mode = "n";
      key = "j";
      action = "gj";
      options = {
        desc = "Move down visual line";
      };
    }
    {
      mode = "n";
      key = "k";
      action = "gk";
      options = {
        desc = "Move up visual line";
      };
    }

    # Change L and H to mirror $ and _
    {
      mode = ["n" "x" "o"];
      key = "L";
      action = "$";
    }
    {
      mode = ["n" "x" "o"];
      key = "H";
      action = "^";
    }

    # Prose mode
    {
      mode = "n";
      key = "<localleader>p";
      action = "<cmd>setlocal spell! spelllang=en_us nowrap! linebreak!<CR>";
      options = {
        desc = "Prose mode";
      };
    }
    # Rehighlight selection after indenting
    {
      mode = "v";
      key = "<";
      action = "<gv";
      options = {
        desc = "Rehighlight selection after indenting";
      };
    }
    {
      mode = "v";
      key = ">";
      action = ">gv";
      options = {
        desc = "Rehighlight selection after indenting";
      };
    }
    
    # Change c key so it doesn't copy to register
    {
      mode = "n";
      key = "c";
      action = "\"_c";
      options = {
        desc = "Change";
        silent = true;
      };
    }
    {
      mode = "v";
      key = "c";
      action = "\"_c";
      options = {
        desc = "Change";
        silent = true;
      };
    }

    # Remove the need to press shift for command mode.
    {
      mode = "n";
      key = ";";
      action = ":";
    }
    
    # Cd into the current directory
    {
      mode = "n";
      key = "<localleader>cd";
      action = "<cmd>lcd %:p:h<CR>:pwd<CR>";
      options = {
        desc = "Change directory to current file";
      };
    }

    # Paste over visual selection
    {
      mode = "x";
      key = "<leader>p";
      action = "\"+p";
      options = {
        desc = "Paste over visual selection";
      };
    }

    ## Program specific ##

    # Lazygit
    {
      mode = "n";
      key = "<localleader>g";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit";
      };
    }

    # Oil
    {
      mode = "n";
      key = "<localleader><localleader>";
      action = "<cmd>Oil<CR>";
      options = {
        desc = "Oil";
      };
    }

    # Undotree
    {
      mode = "n";
      key = "<localleader>u";
      action = "<cmd>UndotreeToggle<CR>";
      options = {
        desc = "Undotree";
      };
    }

    # Zoxide
    {
      mode = "n";
      key = "<localleader>z";
      action = ":Z ";
      options = {
        desc = "Zoxide";
      };
    }
  ];
}
