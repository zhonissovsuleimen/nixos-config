{ pkgs, config, maccel, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./network.nix
    ./boot
    ./programs
    ./hardware
  ];
}
