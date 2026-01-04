{
  programs.nvf = {
    enable = true;

    settings.vim = {
      autocomplete.blink-cmp.enable = true;

      autopairs.nvim-autopairs.enable = true;

      clipboard = {
        enable = true;
        providers.wl-copy.enable = true;
        registers = "unnamedplus";
      };

      comments = {
        comment-nvim = {
          enable = true;
          mappings.toggleCurrentLine = "<C-/>";
          mappings.toggleSelectedLine = "<C-/>";
        };
      };

      dashboard = {
        dashboard-nvim.enable = true;
      };

      debugger = {
        nvim-dap = {
          enable = true;
          ui.enable = true;
        };
      };

      filetree = {
        neo-tree = {
          enable = true;
        };
      };

      fzf-lua.enable = true;

      git = {
        enable = true;
        gitsigns.enable = true;
        neogit.enable = true;
      };

      languages = {
        enableFormat = true;
        enableTreesitter = true;
        enableExtraDiagnostics = true;
        bash.enable = true;
        clang.enable = true;
        markdown.enable = true;
        nix.enable = true;
        rust = {
          enable = true;
          extensions.crates-nvim.enable = true;
        };
      };

      lsp = {
        enable = true;
      };

      maps = {
        normal = {
          "<leader>e" = {
            action = "<cmd>Neotree toggle reveal<cr>";
            desc = "Toggle Neotree";
          };
          "<leader>km" = {
            action = "<cmd>Telescope keymaps<cr>";
            desc = "Open key maps in Telescope";
          };
          "<leader>ut" = {
            action = "<cmd>UndotreeToggle<cr>";
            desc = "Toggle Undotree";
          };
          "ys" = {
            action = "<Plug>(nvim-surround-normal)";
            desc = "Add a surrounding pair (nvim-surround)";
          };
          "cs" = {
            action = "<Plug>(nvim-surround-change)";
            desc = "Change a surrounding pair (nvim-surround)";
          };
          "ds" = {
            action = "<Plug>(nvim-surround-delete)";
            desc = "Delete a surrounding pair (nvim-surround)";
          };
        };
        visual = {
          "S" = {
            desc = "Add a surrounding pair in visual mode (nvim-surround)";
            action = "<Plug>(nvim-surround-visual)";
          };
        };
      };

      options = {
        shiftwidth = 2;
        tabstop = 2;
        wrap = false;
      };

      statusline = {
        lualine = {
          enable = true;
        };
      };

      syntaxHighlighting = true;

      telescope.enable = true;

      terminal = {
        toggleterm = {
          enable = true;
          lazygit.enable = true;
        };
      };

      theme = {
        enable = true;
        name = "github";
        style = "dark_high_contrast";
      };

      ui = {
        illuminate.enable = true;
      };

      utility = {
        leetcode-nvim.enable = true;
        multicursors.enable = true;
        surround.enable = true;
        undotree.enable = true;
      };

      viAlias = false;

      vimAlias = false;

      visuals = {
        nvim-scrollbar.enable = true;
        fidget-nvim.enable = true;
        highlight-undo.enable = true;
      };
    };
  };
}
