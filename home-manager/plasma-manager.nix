{ config, pkgs, ... }:

let
  pm = builtins.fetchTarball https://github.com/nix-community/plasma-manager/archive/trunk.tar.gz;
in
{
  imports = [
    (import "${pm}/modules")
  ];

  programs.plasma = {
    enable = true;


    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
    };
  };
}

