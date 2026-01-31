{ lib, ... }:
{
  programs.nixvim = {
    enable = true;

    globals.mapleader = " ";
    globals.rust_recommended_style = 0;
    waylandSupport = true;

    opts = {
      expandtab = true;
      number = true;
      relativenumber = true;
      shiftwidth = 2;
      softtabstop = 2;
      tabstop = 2;
      wrap = false;

      undofile = true;
      timeoutlen = 200;
    };

    clipboard = {
      register = "unnamedplus";
      providers.wl-copy.enable = true;
    };

    autoCmd = lib.mkAfter [
      {
        event = "FileType";
        pattern = "*";
        command = "setlocal formatoptions-=o";
      }
      {
        event = "VimEnter";
        command = "nnoremap <silent> % <Plug>(MatchitNormalForward)zz";
      }
    ];

    keymaps = lib.mkAfter [
      { mode = "n"; key = "n"; action = "nzzzv"; }
      { mode = "n"; key = "N"; action = "Nzzzv"; }

      { mode = "n"; key = "{"; action = "{zz"; }
      { mode = "n"; key = "}"; action = "}zz"; }

      { mode = "n"; key = "<C-d>"; action = "<C-d>zz"; }
      { mode = "n"; key = "<C-u>"; action = "<C-u>zz"; }
    ];


    plugins = {
      comment.enable = true;
      fidget.enable = true;
      gitsings.enable = true;
      lsp-format.enable = true;
      lualine.enable = true;
      multicursors.enable = true;
      nvim-autopairs.enable = true;
      scrollview.enable = true;
      vim-surround.enable = true;
      web-devicons.enable = false;
    };
    imports = [
      ./plugins/cmp.nix
      ./plugins/colorschemes.nix
      ./plugins/crates.nix
      ./plugins/leetcode.nix
      ./plugins/lsp.nix
      ./plugins/neo-tree.nix
      ./plugins/telescope.nix
      ./plugins/toggleterm.nix
      ./plugins/treesitter.nix
      ./plugins/undotree.nix
    ];
  };
}
