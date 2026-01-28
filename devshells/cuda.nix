{ pkgs }:

pkgs.mkShell {
  packages = with pkgs; [
    cudaPackages.cudatoolkit
  ];

  shellHook = ''
    alias nvcc="nvcc --cudart shared -arch=sm_89"

    export PATH=${pkgs.cudaPackages.cudatoolkit}/bin:$PATH
    export LD_LIBRARY_PATH=${pkgs.cudaPackages.cudatoolkit}/lib64:$LD_LIBRARY_PATH
    export CUDA_HOME=${pkgs.cudaPackages.cudatoolkit}

    nvcc --version
  '';
}
