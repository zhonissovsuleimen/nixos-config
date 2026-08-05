{ inputs, pkgs, lib, ... }:
{
  environment.systemPackages = lib.mkAfter [
    inputs.codex-cli-nix.packages.${pkgs.system}.default
    pkgs.bubblewrap

    inputs.claude-code-nix.packages.${pkgs.system}.default
  ];
}
