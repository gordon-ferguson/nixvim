{self, ...}:{
  keymaps = [
    # Remove the need to press shift for command mode.
    {
      mode = "n";
      key = ";";
      action = ":";
    }
  ];
}
