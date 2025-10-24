{ pkgs, config, maccel, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./boot
    ./programs
    ./hardware
  ];
}
