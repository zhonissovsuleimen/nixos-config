{ config, pkgs, ... }:

{
  home.packages = with pkgs; [
    firefox
    git
    telegram-desktop
    alacritty
  ];

  programs.bash = {
    enable = true;
    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.nixos-config/";
      nrt = "sudo nixos-rebuild test --flake ~/.nixos-config/";
      gs = "git status"
      gd = "git diff"
      gds = "git diff --staged"
    };
  };

  imports = [
    ./plasma
    ./vesktop
    ./neovim.nix
  ];

  home.stateVersion = "25.05";
}

