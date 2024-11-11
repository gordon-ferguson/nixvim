_: {
  config.plugins.which-key = {
    enable = true;
    icons = {
      group = "";
      separator = "";
    };
    settings = {
      spec = {
        ["<leader>"] = {
          name = " Buffer";
          g = " Git";
          s = " Search";
          b = " Buffer";
          t = " Terminal";
          l = " LSP";
        };
      disable.ft = [ "TelescopePrompt" ];
      };  
    };
  };
}
