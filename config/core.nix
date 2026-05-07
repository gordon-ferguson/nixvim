{ pkgs, ... }: {
  config = {
    colorschemes.catppuccin = {
      enable = true;
      settings = {
        term_colors = true;
        no_italic = false;
        no_bold = false;
      };
    };
    luaLoader.enable = true;
    plugins = {
      treesitter = {
        enable = true;
        settings = {
          grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
            bash
            fish
            hyprlang
            lua
            vim
            vimdoc
            python
            javascript
            markdown
            markdown-inline
            html
            regex
          ];
        };
      };
      vim-matchup = {
        enable = true;
        treesitter.enable = true;
      };
      # auto-session.enable = true;
    };
  };
}
