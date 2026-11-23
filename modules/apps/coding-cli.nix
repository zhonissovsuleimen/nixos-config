{ inputs, pkgs, lib, ... }:
{
  environment.systemPackages = lib.mkAfter [
    inputs.codex-cli-nix.packages.${pkgs.stdenv.hostPlatform.system}.default
    pkgs.bubblewrap

    inputs.claude-code-nix.packages.${pkgs.stdenv.hostPlatform.system}.default
  ];
}
