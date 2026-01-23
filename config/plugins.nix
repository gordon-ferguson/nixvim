{ pkgs, ... }: {
  plugins = {
    # Navigate Tmux with the same keybindings as Neovim
    colorizer.enable = true;
    tmux-navigator = {
      enable = true;
      keymaps = [
        {
          action = "left";
          key = "<C-w>h";
        }
        {
          action = "down";
          key = "<C-w>j";
        }
        {
          action = "up";
          key = "<C-w>k";
        }
        {
          action = "right";
          key = "<C-w>l";
        }
        {
          action = "previous";
          key = "<C-w>\\";
        }
      ];
    };

    # Buffer bar
    bufferline = {
      enable = false;
    };

    # Status bar
    lualine = {
      enable = true;
    };

    # Oil
    oil = {
      enable = true;
    };

    # Smooth scrolling with neoscroll
    neoscroll = {
      enable = true;
    };

    # Includes all parsers for treesitter
    treesitter = {
      enable = true;
    };

    # Icons
    web-devicons.enable = true;

    # Persistence
    persistence.enable = false;

    # Sleuth
    sleuth = {
      enable = true;
    };

    # Auto-tagging
    ts-autotag = {
      enable = true;
    };

    # # Autopairs
    # nvim-autopairs = {
    #   enable = true;
    # };

    # LSP
    none-ls = {
      enable = true;
      settings = {
        cmd = [ "bash -c nvim" ];
        debug = true;
      };
      sources = {
        code_actions = {
          statix.enable = true;
          gitsigns.enable = true;
        };
        diagnostics = {
          statix.enable = true;
          deadnix.enable = true;
          pylint.enable = true;
          checkstyle.enable = true;
        };
        formatting = {
          alejandra.enable = true;
          stylua.enable = true;
          shfmt.enable = true;
          nixpkgs_fmt.enable = true;
          google_java_format.enable = false;
          prettier = {
            enable = true;
            disableTsServerFormatter = true;
          };
          black = {
            enable = true;
            settings = ''
              {
                extra_args = { "--fast" },
              }
            '';
          };
        };
        completion = {
          luasnip.enable = true;
          # spell.enable = true;
        };
      };
    };

    # Lazygit
    lazygit = {
      enable = true;
    };

    # Notify
    notify = {
      enable = true;
      settings = {
        background_colour = "#1e1e2e";
        fps = 60;
        render = "default";
        timeout = 500;
        top_down = true;
      };
    };

    # Debugger
    dap-python = {
      enable = true;
    };
    dap-ui = {
      enable = true;
      settings = {
        floating = {
          mappings = {
            close = [ "<ESC>" "q" ];
          };
        };
      };
    };
    dap-virtual-text = {
      enable = true;
    };
    dap = {
      enable = true;
      signs = {
        dapBreakpoint = {
          text = "●";
          texthl = "DapBreakpoint";
        };
        dapBreakpointCondition = {
          text = "●";
          texthl = "DapBreakpointCondition";
        };
        dapLogPoint = {
          text = "◆";
          texthl = "DapLogPoint";
        };
      };
      configurations = {
        java = [
          {
            type = "java";
            request = "launch";
            name = "Debug (Attach) - Remote";
            hostName = "127.0.0.1";
            port = 5005;
          }
        ];
      };
    };

    # Linting
    lint = {
      enable = true;
      lintersByFt = {
        text = [ "vale" ];
        json = [ "jsonlint" ];
        markdown = [ "vale" ];
        rst = [ "vale" ];
        ruby = [ "ruby" ];
        janet = [ "janet" ];
        inko = [ "inko" ];
        clojure = [ "clj-kondo" ];
        dockerfile = [ "hadolint" ];
        terraform = [ "tflint" ];
      };
    };

    # Trouble
    trouble = {
      enable = true;
    };

    # Friendly Snippets
    friendly-snippets = {
      enable = true;
    };

    # Code snippets
    luasnip = {
      enable = true;
      settings = {
        enable_autosnippets = true;
        store_selection_keys = "<Tab>";
      };
      fromSnipmate = [
        {
          paths = ./vim-snippets/snippets/markdown.snippets;
          include = [ "markdown" ];
        }
        {
          paths = ./vim-snippets/snippets/html.snippets;
          include = [ "html" ];
        }
        {
          paths = ./vim-snippets/snippets/go.snippets;
          include = [ "go" ];
        }
        {
          paths = ./vim-snippets/snippets/rust.snippets;
          include = [ "rust" ];
        }
        {
          paths = ./vim-snippets/snippets/php.snippets;
          include = [ "php" ];
        }
        {
          paths = ./vim-snippets/snippets/lua.snippets;
          include = [ "lua" ];
        }
        {
          paths = ./vim-snippets/snippets/c.snippets;
          include = [ "c" ];
        }
        {
          paths = ./vim-snippets/snippets/css.snippets;
          include = [ "css" ];
        }
        {
          paths = ./vim-snippets/snippets/javascript/javascript.snippets;
          include = [ "javascript" ];
        }
        {
          paths = ./vim-snippets/snippets/javascript/javascript-react.snippets;
          include = [ "javascript-react" ];
        }
        {
          paths = ./vim-snippets/UltiSnips/javascript-node.snippets;
          include = [ "javascript-node" ];
        }
        {
          paths = ./vim-snippets/snippets/typescript.snippets;
          include = [ "typescript" ];
        }
        {
          paths = ./vim-snippets/snippets/typescriptreact.snippets;
          include = [ "typescript-react" ];
        }
        {
          paths = ./vim-snippets/snippets/sh.snippets;
          include = [ "sh" ];
        }
        {
          paths = ./vim-snippets/snippets/bash.snippets;
          include = [ "bash" ];
        }
        {
          paths = ./vim-snippets/snippets/zsh.snippets;
          include = [ "zsh" ];
        }
      ];
    };

    # Easily toggle comments
    commentary.enable = true;

    # Terminal inside Neovim
    toggleterm = {
      enable = true;
      settings = {
        hide_numbers = false;
        autochdir = true;
        close_on_exit = true;
        direction = "vertical";
      };
    };

    # Git signs in code
    gitsigns = {
      enable = true;
      settings = {
        current_line_blame = true;
      };
    };

    # Markdown preview server
    markdown-preview = {
      enable = true;
      settings.theme = "dark";
    };

    render-markdown = {
      enable = true;
      settings = {
        enabled = true; # This lets you set whether the plugin should render documents from the start or not. Useful if you want to use a command like RenderMarkdown enable to start rendering documents rather than having it on by default.
        bullet = {
          icons = [
            "•"
          ];
          right_pad = 1;
        };
        code = {
          above = " ";
          below = " ";
          border = "thick";
          language_pad = 2;
          left_pad = 2;
          position = "right";
          right_pad = 2;
          sign = false;
          width = "block";
        };
        heading = {
          border = true;
          icons = [
            "1 "
            "2 "
            "3 "
            "4 "
            "5 "
            "6 "
          ];
          position = "inline";
          sign = false;
          width = "full";
        };
        render_modes = true;
        signs = {
          enabled = false;
        };
      };
    };

    image = {
      enable = true;
      settings = {
        backend = "kitty";
        hijack_file_patterns = [
          "*.png"
          "*.jpg"
          "*.jpeg"
          "*.gif"
          "*.webp"
        ];
        max_height_window_percentage = 25;
        tmux_show_only_inactive_window = true;
        integrations = {
          markdown = {
            enabled = true;
            downloadRemoteImages = true;
            filetypes = [
              "markdown"
              "vimwiki"
              "mdx"
            ];
          };
        };
      };
    };

    # Prettier fancier command window
    noice = {
      enable = true;
      settings = {
        cmdline = {
          view = "cmdline"; # Force command window to bottom, use "cmdline_popup" for middle.
        };
      };
    };

    # Todo comments
    todo-comments = {
      enable = true;
      settings.colors = {
        error = [ "DiagnosticError" "ErrorMsg" "#DC2626" ];
        warning = [ "DiagnosticWarn" "WarningMsg" "#FBBF24" ];
        info = [ "DiagnosticInfo" "#2563EB" ];
        hint = [ "DiagnosticHint" "#10B981" ];
        default = [ "Identifier" "#7C3AED" ];
        test = [ "Identifier" "#FF00FF" ];
      };
    };

    # File tree
    neo-tree = {
      enable = true;
      enableDiagnostics = true;
      enableGitStatus = true;
      enableModifiedMarkers = true;
      enableRefreshOnWrite = true;
      closeIfLastWindow = true;
      popupBorderStyle = "rounded"; # Type: null or one of “NC”, “double”, “none”, “rounded”, “shadow”, “single”, “solid” or raw lua code
      buffers = {
        bindToCwd = false;
        followCurrentFile = {
          enabled = true;
        };
      };
      settings = {
        window = {
          width = 40;
          height = 15;
          autoExpandWidth = false;
          mappings = {
            "<space>" = "none";
          };
        };
      };
    };

    undotree = {
      enable = true;
      settings = {
        autoOpenDiff = true;
        focusOnToggle = true;
      };
    };

    # Highlight word under cursor
    illuminate = {
      enable = true;
      underCursor = false;
      filetypesDenylist = [
        "Outline"
        "TelescopePrompt"
        "alpha"
        "harpoon"
        "reason"
      ];
    };

    # Nix expressions in Neovim
    nix = {
      enable = true;
    };

    # Language server
    lsp = {
      enable = true;
      servers = {
        # Average webdev LSPs
        # ts-ls.enable = true; # TS/JS
        ts_ls.enable = true; # TS/JS
        cssls.enable = true; # CSS
        tailwindcss.enable = true; # TailwindCSS
        html.enable = true; # HTML
        astro.enable = true; # AstroJS
        tinymist.enable = true; #Typst
        phpactor.enable = true; # PHP
        svelte.enable = false; # Svelte
        # vuels.enable = false; # Vue
        pyright.enable = true; # Python
        marksman.enable = true; # Markdown
        nixd.enable = true; # Nix
        dockerls.enable = true; # Docker
        bashls.enable = true; # Bash
        clangd.enable = true; # C/C++
        csharp_ls.enable = true; # C#
        yamlls.enable = true; # YAML
        ltex = {
          enable = true;
          settings = {
            enabled = [ "astro" "html" "latex" "markdown" "text" "tex" "gitcommit" ];
            completionEnabled = true;
            language = "en-US de-DE nl";
            # dictionary = {
            #   "nl-NL" = [
            #     ":/home/liv/.local/share/nvim/ltex/nl-NL.txt"
            #   ];
            #   "en-US" = [
            #     ":/home/liv/.local/share/nvim/ltex/en-US.txt"
            #   ];
            #   "de-DE" = [
            #     ":/home/liv/.local/share/nvim/ltex/de-DE.txt"
            #   ];
            # };
          };
        };
        gopls = {
          # Golang
          enable = true;
          autostart = true;
        };

        lua_ls = {
          # Lua
          enable = true;
          settings.telemetry.enable = false;
        };

        # Rust
        rust_analyzer = {
          enable = true;
          installRustc = true;
          installCargo = true;
        };
      };
    };

    # Even more snippets
    nvim-snippets = {
      enable = false;
      settings = {
        create_autocmd = true;
        create_cmp_source = true;
        extended_filetypes = {
          typescript = [
            "javascript"
          ];
        };
        friendly_snippets = true;
        global_snippets = [
          "all"
        ];
        ignored_filetypes = [
          #  "lua"
        ];
        search_paths = [
          {
            __raw = "vim.fn.stdpath('config') .. '/snippets'";
          }
        ];
      };
    };

    cmp-emoji = {
      enable = true;
    };

    cmp = {
      enable = true;
      settings = {
        completion = {
          completeopt = "menu,menuone,noinsert";
        };
        autoEnableSources = true;
        experimental = { ghost_text = true; };
        performance = {
          debounce = 60;
          fetchingTimeout = 200;
          maxViewEntries = 30;
        };
        snippet = {
          expand = ''
            function(args)
              require('luasnip').lsp_expand(args.body)
            end
          '';
        };
        formatting = { fields = [ "kind" "abbr" "menu" ]; };
        sources = [
          { name = "nvim_lsp"; }
          { name = "emoji"; }
          {
            name = "buffer"; # text within current buffer
            option.get_bufnrs.__raw = "vim.api.nvim_list_bufs";
            keywordLength = 3;
          }
          { name = "copilot"; } # enable/disable copilot
          {
            name = "path"; # file system paths
            keywordLength = 3;
          }
          {
            name = "luasnip"; # snippets
            keywordLength = 3;
          }
        ];

        window = {
          completion = { border = "solid"; };
          documentation = { border = "solid"; };
        };

        mapping = {
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
          "<C-j>" = "cmp.mapping.select_next_item()";
          "<C-k>" = "cmp.mapping.select_prev_item()";
          "<C-e>" = "cmp.mapping.abort()";
          "<C-b>" = "cmp.mapping.scroll_docs(-4)";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<C-Space>" = "cmp.mapping.complete()";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-CR>" = "cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true })";
          "<C-l>" = ''
            cmp.mapping(function()
              if luasnip.expand_or_locally_jumpable() then
                luasnip.expand_or_jump()
              end
            end, { 'i', 's' })
          '';
          "<C-h>" = ''
            cmp.mapping(function()
              if luasnip.locally_jumpable(-1) then
                luasnip.jump(-1)
              end
            end, { 'i', 's' })
          '';
        };
      };
    };
    copilot-lua = {
      enable = true;
      settings = {
        panel.enabled = false;
        suggestion.enabled = false;
      };
    };
    copilot-cmp = {
      enable = true;
    };
    cmp-nvim-lsp = {
      enable = true; # LSP
    };
    cmp-buffer = {
      enable = true;
    };
    cmp-path = {
      enable = true; # file system paths
    };
    cmp_luasnip = {
      enable = true; # snippets
    };
    cmp-cmdline = {
      enable = true; # autocomplete for cmdline
    };

    lspkind = {
      enable = true;
      settings = {
        maxwidth = 50;
        ellipsis_char = "...";
        symbol_map = {
          Copilot = "";
        };
      };
    };

    schemastore = {
      enable = true;
      yaml.enable = true;
      json.enable = false;
    };

    # Harpoon
    harpoon = {
      enable = true;
      enableTelescope = true;
    };

    # Leap
    leap = {
      enable = true;
    };

    # Repeat
    repeat = {
      enable = true;
    };

    # Surround
    nvim-surround = {
      enable = true;
    };
    # Typst-Preview
    typst-preview = {
      enable = true;
    };
  };

  extraConfigVim = ''
  '';

  extraConfigLuaPre = ''
    if vim.g.have_nerd_font then
      require('nvim-web-devicons').setup {}
    end
  '';

  extraConfigLuaPost = ''
    -- vim: ts=2 sts=2 sw=2 et
  '';

  extraConfigLua = ''
      require("recorder").setup {
      	-- Named registers where macros are saved (single lowercase letters only).
      	-- The first register is the default register used as macro-slot after
      	-- startup.
      	slots = { "a", "b" },
    
      	mapping = {
      		startStopRecording = "q",
      		playMacro = "Q",
      		switchSlot = "<C-q>",
      		editMacro = "cq",
      		deleteAllMacros = "dq",
      		yankMacro = "yq",
      		-- ⚠️ this should be a string you don't use in insert mode during a macro
      		addBreakPoint = "##",
      	},
    
      	-- Clears all macros-slots on startup.
      	clear = false,
    
      	-- Log level used for non-critical notifications; mostly relevant for nvim-notify.
      	-- (Note that by default, nvim-notify does not show the levels `trace` & `debug`.)
      	logLevel = vim.log.levels.INFO, -- :help vim.log.levels
    
      	-- If enabled, only essential notifications are sent.
      	-- If you do not use a plugin like nvim-notify, set this to `true`
      	-- to remove otherwise annoying messages.
      	lessNotifications = false,
    
      	-- Use nerdfont icons in the status bar components and keymap descriptions
      	useNerdfontIcons = true,
    
      	-- Performance optimzations for macros with high count. When `playMacro` is
      	-- triggered with a count higher than the threshold, nvim-recorder
      	-- temporarily changes changes some settings for the duration of the macro.
      	performanceOpts = {
      		countThreshold = 100,
      		lazyredraw = true, -- enable lazyredraw (see `:h lazyredraw`)
      		noSystemClipboard = true, -- remove `+`/`*` from clipboard option
      		autocmdEventsIgnore = { -- temporarily ignore these autocmd events
      			"TextChangedI",
      			"TextChanged",
      			"InsertLeave",
      			"InsertEnter",
      			"InsertCharPre",
      		},
      	},
    
      	-- [experimental] partially share keymaps with nvim-dap.
      	-- (See README for further explanations.)
      	dapSharedKeymaps = false,
      }
      require('flit').setup {
        keys = { f = 'f', F = 'F', t = 't', T = 'T' },
        -- A string like "nv", "nvo", "o", etc.
        labeled_modes = "nvo",
        -- Repeat with the trigger key itself.
        clever_repeat = true,
        multiline = true,
        -- Like `leap`s similar argument (call-specific overrides).
        -- E.g.: opts = { equivalence_classes = {} }
        opts = {}
      }

      require("telescope").load_extension("lazygit")

      luasnip = require("luasnip")
      kind_icons = {
        Text = "󰊄",
        Method = "",
        Function = "󰡱",
        Constructor = "",
        Field = "",
        Variable = "󱀍",
        Class = "",
        Interface = "",
        Module = "󰕳",
        Property = "",
        Unit = "",
        Value = "",
        Enum = "",
        Keyword = "",
        Snippet = "",
        Color = "",
        File = "",
        Reference = "",
        Folder = "",
        EnumMember = "",
        Constant = "",
        Struct = "",
        Event = "",
        Operator = "",
        TypeParameter = "",
      } 

      local cmp = require'cmp'

      -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
      cmp.setup.cmdline({'/', "?" }, {
        sources = {
          { name = 'buffer' }
        }
      })

      -- Set configuration for specific filetype.
       cmp.setup.filetype('gitcommit', {
         sources = cmp.config.sources({
           { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
         }, {
           { name = 'buffer' },
         })
       })

       -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
       cmp.setup.cmdline(':', {
         sources = cmp.config.sources({
           { name = 'path' }
         }, {
           { name = 'cmdline' }
         }),
    --      formatting = {
    --       format = function(_, vim_item)
    --         vim_item.kind = cmdIcons[vim_item.kind] or "FOO"
    --       return vim_item
    --      end
    -- }
         })  '';

  # colorschemes.catppuccin = {
  #   enable = true;
  #   settings = {
  #     no_bold = false;
  #     no_italic = false;
  #     no_underline = false;
  #     transparent_background = true;
  #     integrations = {
  #       cmp = true;
  #       noice = true;
  #       notify = true;
  #       neotree = true;
  #       harpoon = true;
  #       gitsigns = true;
  #       which_key = true;
  #       illuminate.enabled = true;
  #       treesitter = true;
  #       treesitter_context = true;
  #       telescope.enabled = true;
  #       indent_blankline.enabled = true;
  #       mini.enabled = true;
  #       native_lsp = {
  #         enabled = true;
  #         inlay_hints = {
  #           background = true;
  #         };
  #         underlines = {
  #           errors = ["underline"];
  #           hints = ["underline"];
  #           information = ["underline"];
  #           warnings = ["underline"];
  #         };
  #       };
  #     };
  #   };
  # };

  # extraPlugins = with pkgs.vimPlugins; [
  #   vim-be-good
  #   headlines-nvim
  #   # accelerated-jk
  # ];

  extraPlugins = with pkgs.vimPlugins; [
    flit-nvim
    zoxide-vim
    glow-nvim # Glow inside of Neovim
    clipboard-image-nvim
    (pkgs.vimUtils.buildVimPlugin {
      pname = "nvim-recorder";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "chrisgrieser";
        repo = "nvim-recorder";
        rev = "a3c268f706ffec4428ea74bba6dfa3a0b20afa37";
        hash = "sha256-7Uzd1SHuMjdVmqvjnktdW5jiIvdgP7L3AIIFFOFDngA=";
      };
    })
    (pkgs.vimUtils.buildVimPlugin {
      pname = "showkeys";
      version = "";
      src = pkgs.fetchFromGitHub {
        owner = "nvzone";
        repo = "showkeys";
        rev = "38a5d15ef687da37ef0de3d6944b9eb6830982f3";
        hash = "sha256-OeQoRb5nRT5piUzakq8uQdQFWvqockffTAM9plv06BI=";
      };
    })
  ];
  #    ++ [
  #      (pkgs.vimutils.buildvimplugin {
  #      pname = "markview.nvim";
  #      version = "0.0.1";
  #      src = pkgs.fetchfromgithub {
  #        owner = "oxy2dev";
  #        repo = "markview.nvim";
  #        rev = "a959d77ca7e9f05175e3ee4e582db40b338c9164";
  #        hash = "sha256-w6yn8ancjmlrbzaruj3gj4x2j/20wurolm6j39wpzek=";
  #      };
  #    })
  #      # Just copy this block for a new plugin
  #      # (pkgs.vimUtils.buildVimPlugin {
  #      #   pname = "";
  #      #   src = pkgs.fetchFromGitHub {
  #      #     owner = "";
  #      #     repo = "";
  #      #     rev = "";
  #      #     sha256 = "";
  #      #   };
  #      # })
  #    ];
}
