# Nixvim

My personal Neovim configuration, fully managed with [Nixvim](https://github.com/nix-community/nixvim) and [flake-parts](https://github.com/hercules-ci/flake-parts).

## Features

- **Catppuccin** colorscheme with transparent background support
- **LSP** support for TypeScript, Python, Go, Rust, C/C++, Lua, Nix, HTML/CSS, Astro, PHP, Typst, and more
- **Autocompletion** via nvim-cmp with LSP, Copilot, snippets, path, and buffer sources
- **Formatting** on save with conform.nvim (prettier, black, stylua, shfmt, nixfmt)
- **Linting** with nvim-lint (statix, pylint, hadolint, tflint, etc.)
- **Telescope** fuzzy finder with Lazygit integration
- **Treesitter** for syntax highlighting and code navigation
- **DAP** debugging for Python and Java
- **Harpoon** for quick file switching
- **Neo-tree** file explorer and **Oil** for directory editing
- **Tmux Navigator** for seamless pane navigation
- **Leap** and **Flit** for fast cursor movement
- **LuaSnip** with custom and community snippets
- **Gitsigns** with inline blame, **Lazygit** integration
- **Markdown** preview, render-markdown, and image support (Kitty backend)
- **Noice**, **notify**, **which-key**, **lualine**, and more UI enhancements
- **Claude Code** integration

## Usage

Run locally after cloning:

```sh
nix run .
```

Or run directly from GitHub:

```sh
nix run github:gordon-ferguson/nixvim
```

Validate the configuration:

```sh
nix flake check .
```

## Supported Systems

- `x86_64-linux`
- `aarch64-linux`
- `x86_64-darwin`
- `aarch64-darwin`

## Structure

```
config/
  default.nix      # Module imports
  core.nix         # Colorscheme, treesitter grammars, core plugins
  options.nix      # Neovim options
  plugins.nix      # Plugin configuration
  keymaps.nix      # Key mappings
  telescope.nix    # Telescope setup
  tmux/            # Tmux integration
  which-key/       # Which-key configuration
  vim-snippets/    # Custom snippet files
```
