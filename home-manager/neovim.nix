{ config, pkgs, ... }:

{
  programs.neovim = {
    enable = true;

    extraPackages = [ pkgs.wl-clipboard ];
    extraConfig = ''
      set clipboard+=unnamedplus
    '';
  };
}

