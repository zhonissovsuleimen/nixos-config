{ pkgs, config, maccel, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./programs
    ./hardware
  ];
}
