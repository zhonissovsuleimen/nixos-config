{ pkgs ? import <nixpkgs> { config.allowUnfree = true; } }:

{
  rust = import ./rust.nix { inherit pkgs; };
  cuda = import ./cuda.nix { inherit pkgs; };
}
