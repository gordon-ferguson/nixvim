# Nixvim

My personal Neovim configuration, fully managed with [Nixvim](https://github.com/nix-community/nixvim), [flake-parts](https://github.com/hercules-ci/flake-parts), and `nixos-unstable`.

## Features

- **Catppuccin** colorscheme with terminal colors enabled
- **Treesitter** grammars for Bash, Fish, Hyprland, Lua, Vim, Python, JavaScript, Markdown, HTML, and regex
- **LSP** support for TypeScript/JavaScript, CSS, Tailwind CSS, HTML, Astro, Typst, PHP, Python, Markdown, Nix, Docker, Bash, C/C++, C#, YAML, Go, and Lua
- **Completion** via `nvim-cmp` with LSP, emoji, buffer, path, LuaSnip, and command-line sources
- **Formatting on save** with `conform.nvim` for Nix, Lua, shell, Python, JavaScript/TypeScript, HTML/CSS, JSON, YAML, Markdown, and Astro
- **Linting** with `nvim-lint` for Nix, prose, Markdown, reStructuredText, Clojure, Dockerfiles, and Terraform
- **Telescope** search with project.nvim, Lazygit, Git pickers, diagnostics, symbols, registers, colorschemes, and notification history
- **Debugging** through `nvim-dap`, `dap-python`, `dap-ui`, `dap-virtual-text`, and a Java remote attach configuration
- **Navigation** with Harpoon, Leap, Flit, Neo-tree, Oil, zoxide-vim, tmux-navigator, and buffer switching
- **Editing helpers** including LuaSnip, friendly-snippets, vim-snippets, nvim-surround, commentary, vim-matchup, ts-autotag, undotree, illuminate, colorizer, neoscroll, sleuth, and toggleterm
- **Markdown and media** support through markdown-preview, render-markdown, Typst preview, and Kitty-backed image rendering
- **UI** plugins including lualine, noice, notify, which-key, web-devicons, todo-comments, trouble, and gitsigns
- **Claude Code**, nvim-recorder, and showkeys integrations

## Usage

Run the flake package locally:

```sh
nix run .
```

Or run directly from GitHub:

```sh
nix run github:gordon-ferguson/nixvim
```

Validate the Nixvim module:

```sh
nix flake check .
```

## Defaults

- Leader: `<Space>`
- Local leader: `,`
- Clipboard: `unnamedplus` with `wl-copy`
- Indentation: two spaces, `expandtab`, smart indentation, and no line wrapping
- Search: case-insensitive by default, smart case when uppercase characters are used
- UI: absolute and relative line numbers, cursor line, persistent undo, disabled swapfiles, list characters, and centered scrolling

## Keymaps

- `<leader>f`: format the current buffer
- `<leader><leader>`: switch buffers with Telescope
- `<leader>s...`: Telescope search actions
- `<leader>g...`: Telescope Git pickers
- `<leader>h...`: Harpoon actions
- `<localleader>g`: open Lazygit
- `<localleader><localleader>`: open Oil
- `<localleader>u`: toggle Undotree
- `<localleader>z`: start zoxide navigation
- `<localleader>p`: toggle prose mode
- `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>`: move between Neovim and tmux panes
- `s` / `S`: Leap navigation
- `;`: command mode

## Tooling

The flake includes runtime tooling used by the editor configuration:

- Formatters: `nixfmt`, `alejandra`, `stylua`, `shfmt`, `black`, `prettier`
- Linters: `statix`, `deadnix`, `vale`, `hadolint`, `tflint`, `clj-kondo`

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
  tmux/            # Tmux navigator integration
  which-key/       # Which-key configuration
  vim-snippets/    # Bundled SnipMate and UltiSnips snippets
```

## Changelog

See [CHANGELOG.md](./CHANGELOG.md).
