_: {
  config.plugins.which-key = {
    enable = true;
    settings = {
      spec = [
      "<leader>g" = " Git";
      "<leader>s" = " Files";
      "<leader>b" = " Buffer";
      "<leader>t" = " Terminal";
      "<leader>l" = " LSP";
      ];
      disable.filetypes = [ "TelescopePrompt" ];
      icons = {
        group = "";
        separator = "";
      };
    };
  };
}
