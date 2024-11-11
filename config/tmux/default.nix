_: {
  config = {
    plugins.tmux-navigator.enable = true;
    keymaps = [
      {
        key = "<C-h>";
        mode = [ "n" ];
        action = "<cmd>TmuxNavigateLeft<cr>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        key = "<C-j>";
        mode = [ "n" ];
        action = "<cmd>TmuxNavigateDown<cr>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        key = "<C-k>";
        mode = [ "n" ];
        action = "<cmd>TmuxNavigateUp<cr>";
        options = {
          silent = true;
          noremap = true;
        };
      }
      {
        key = "<C-l>";
        mode = [ "n" ];
        action = "<cmd>TmuxNavigateRight<cr>";
        options = {
          silent = true;
          noremap = true;
        };
      }
    ];
  };
}
