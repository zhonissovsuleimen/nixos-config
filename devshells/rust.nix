{ pkgs }:

pkgs.mkShell {
  packages = with pkgs; [
    cargo
    clippy
    rust-analyzer
    rustPlatform.rustLibSrc
    rustc
    rustfmt
  ];

  shellHook = ''
    rustc --version
  '';
}
