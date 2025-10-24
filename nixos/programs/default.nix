{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    evtest
    nvtopPackages.nvidia
  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kate
    okular
    elisa
  ];

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  programs.noisetorch.enable = true;
}
