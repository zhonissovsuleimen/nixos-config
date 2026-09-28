{ pkgs, ... }:

{
  environment.systemPackages = [
    (pkgs.prismlauncher.overrideAttrs (old: {
      qtWrapperArgs = (old.qtWrapperArgs or [ ]) ++ [
        "--set __NV_PRIME_RENDER_OFFLOAD 1"
        "--set __NV_PRIME_RENDER_OFFLOAD_PROVIDER NVIDIA-G0"
        "--set __GLX_VENDOR_LIBRARY_NAME nvidia"
        "--set __VK_LAYER_NV_optimus NVIDIA_only"
      ];
    }))
  ];
}
