{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    lshw
    evtest
    nvtopPackages.nvidia
  ];

  programs.steam = {
    enable = true;
    extraCompatPackages = [ pkgs.proton-ge-bin ];
  };

  programs.noisetorch.enable = true;
}
