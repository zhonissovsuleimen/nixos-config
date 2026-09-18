{ pkgs, lib, config, ... }:
{
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "modesetting" "nvidia" ];
  hardware.nvidia = {
    modesetting.enable = true;
    gsp.enable = false;

    powerManagement.enable = true;
    powerManagement.finegrained = false;
    dynamicBoost.enable = false;

    open = false;
    nvidiaSettings = true;

    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;
      sync.enable = false;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  environment.systemPackages = with pkgs; lib.mkAfter [
    lact
  ];

  services.lact.enable = true;
}
