{ config, ... }:
{
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  boot.kernelParams = [ "module_blacklist=i915" ];

  hardware.nvidia = {
    modesetting.enable = true;

    powerManagement.enable = false;
    powerManagement.finegrained = false;
    dynamicBoost.enable = true;


    open = false;
    nvidiaSettings = true;

    prime = {
      sync.enable = true;
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:1:0:0";
    };

    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };

  hardware.maccel = {
    enable = true;
    enableCli = true;

    parameters = {
      acceleration = 1000000.0;
      offset = 20.0;
      outputCap = 2.0;
    };
  };
  users.groups.maccel.members = ["sulya"];
}
