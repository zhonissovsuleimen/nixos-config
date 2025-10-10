{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    lshw
  ];


  imports = [
    ./neovim.nix
    ./plasma-manager.nix
  ];

  home.stateVersion = "25.05";
}

