_: {
  config.plugins.which-key = {
    enable = true;
    disable.ft = [ "TelescopePrompt" ];
    icons = {
      group = "";
      separator = "";
    };
    settings.spec = {
      "<leader>g" = " Git";
      "<leader>f" = " Files";
      "<leader>b" = " Buffer";
      "<leader>t" = " Terminal";
      "<leader>l" = " LSP";
    };
  };
}
