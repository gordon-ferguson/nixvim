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
          group = "Files";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>b";
          group = "Buffer";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>t";
          group = "Terminal";
          icon = "";
        }
        {
          __unkeyed-1 = "<leader>l";
          group = "LSP";
          icon = "";
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
