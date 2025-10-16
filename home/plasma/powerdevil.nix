{ pkgs, ... }:

{
  programs.plasma = {
    powerdevil.AC = {
      powerProfile = "performance";
    };
  };
}
