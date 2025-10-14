{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    telegram-desktop
    vesktop
  ];

  imports = [
    ./neovim.nix
    ./plasma
  ];

  home.stateVersion = "25.05";
}

