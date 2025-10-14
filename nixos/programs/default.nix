{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    evtest
  ];

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };
}
