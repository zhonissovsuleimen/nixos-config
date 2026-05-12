{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; lib.mkAfter [
    lshw
    evtest
    nvtopPackages.nvidia
    tree
    s-tui
  ];
}
