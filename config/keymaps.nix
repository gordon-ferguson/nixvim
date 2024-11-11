{self, ...}:{
  keymaps = [
    # Remove the need to press shift for command mode.
    {
      mode = "n";
      key = ";";
      action = ":";
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
