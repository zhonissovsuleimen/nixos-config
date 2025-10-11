{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    extraPackages = [ pkgs.wl-clipboard ];
    extraConfig = ''
      set number
      set relativenumber
      set clipboard+=unnamedplus
    '';
  };
}

