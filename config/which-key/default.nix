_: {
  config.plugins.which-key = {
    enable = true;
    settings = {
      spec = [
        {
          __unkeyed-1 = "<leader>g";
          group = "Git";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>s";
          group = "Search";
          icon = "";
        }
      ];
      disable.filetypes = [ "TelescopePrompt" ];
      icons = {
        group = "";
        separator = "";
      };
    };
  };
}
