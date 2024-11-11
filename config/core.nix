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
			    ensure_installed = [
				    "bash"
				    "c"
				    "fish"
				    "lua"
				    "hyprlang"
				    "javascript"
				    "python"
				    "vim"
				    "vimdoc"
				    "markdown"
				    "markdown_inline"
			    ];
			    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
				    bash
				    fish
				    hyprlang
				    lua
				    vim
				    vimdoc
				    markdown
				    markdown-inline
				    html
				    regex
			    ];
		    };
	    };
    };
  };
}
