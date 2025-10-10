{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    lshw
  ];


  imports = [
    ./neovim.nix
  ];

  home.stateVersion = "25.05";
}

