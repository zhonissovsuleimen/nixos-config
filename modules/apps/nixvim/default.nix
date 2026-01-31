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
    ];

    imports = [
      ./plugins
      ./keymaps.nix
    ];
  };
}
