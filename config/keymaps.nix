{self, ...}:{
  keymaps = [
    # Remove the need to press shift for command mode.
    {
      mode = "n";
      key = ";";
      action = ":";
    }
    # Zoxide
    {
      mode = "n";
      key = "<localleader>z";
      action = "<cmd>Zoxide";
      options = {
        desc = "Zoxide";
      };
    }
  ];
}
