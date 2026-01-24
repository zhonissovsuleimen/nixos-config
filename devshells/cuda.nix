{ pkgs }:

pkgs.mkShell {
  packages = with pkgs; [
    cudaPackages.cudatoolkit
  ];

  shellHook = ''
    nvcc --version
  '';
}
