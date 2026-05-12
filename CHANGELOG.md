# Changelog

## 2026-05-12

- Updated the Nix flake lock and Nixvim inputs for the current Neovim/Nixvim stack.
- Switched Nix formatting in `conform.nvim` to `nixfmt`.
- Updated the bundled Prettier package reference from `nodePackages.prettier` to `prettier`.
- Kept the May optimization work in place: focused Treesitter grammars, reduced lint targets, disabled default render-markdown rendering, disabled current-line Git blame, and moved image rendering setup into Lua so it only loads when a UI is attached.

## 2026-05-06

- Optimized the configuration by trimming broad/default plugin setup and moving project.nvim into the Telescope module.
- Ensured project.nvim has its data directory available before startup.
- Kept Telescope project integration enabled.

## 2026-04-22

- Removed unused or heavy defaults from the configuration.
- Narrowed linting to the tools currently installed by the flake.
- Replaced always-on image plugin configuration with Kitty-backed image setup in Lua.
- Added or retained focused helper plugins including `image-nvim`, `zoxide-vim`, `nvim-recorder`, and `showkeys`.

## 2026-04-13

- Added `.gitignore`.

## 2026-04-09

- Expanded the README with usage, supported systems, and repository structure.

## 2026-04-05

- Removed Copilot completion and related documentation after disabling the Copilot subscription workflow.
