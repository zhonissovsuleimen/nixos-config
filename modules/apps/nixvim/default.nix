{ pkgs, ... }:
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
