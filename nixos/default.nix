{ pkgs, config, maccel, ... }:

{
  imports = [
    ./configuration.nix
    ./hardware-configuration.nix
    ./graphics.nix
  ];

  environment.systemPackages = with pkgs; [
    lshw
    evtest
  ];

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  hardware.maccel = {
    enable = true;
    enableCli = true;

    parameters = {
      acceleration = 1000000.0;
      offset = 20.0;
      outputCap = 2.0;
    };
  };
  users.groups.maccel.members = ["sulya"];
}
