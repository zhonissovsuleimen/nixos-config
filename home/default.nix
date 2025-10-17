{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    telegram-desktop
  ];

  imports = [
    ./plasma
    ./vesktop
    ./neovim.nix
  ];

  home.stateVersion = "25.05";
}

