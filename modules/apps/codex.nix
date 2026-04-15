{ inputs, pkgs, lib, ... }:
{
  environment.systemPackages = lib.mkAfter [
    inputs.codex-cli-nix.packages.${pkgs.system}.default
    pkgs.bubblewrap
  ];
}
