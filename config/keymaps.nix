{self, ...}:{
  keymaps = [

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

    # Oil
    {
      mode = "n";
      key = "<localleader><localleader>";
      action = "<cmd>Oil<CR>";
      options = {
        desc = "Oil";
      };
    }

    # Lazygit
    {
      mode = "n";
      key = "<localleader>g";
      action = "<cmd>LazyGit<CR>";
      options = {
        desc = "LazyGit";
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
