{ pkgs, ... }:
{
  imports = [
    #./grub.nix
    ./systemd-boot.nix
  ];

  boot = {
    loader = {
      efi.canTouchEfiVariables = true;
      timeout = 0;
    };

    kernelParams = [
      "quiet"
      "rd.udev.log_level=3"
      "udev.log_priority=3"
      "rd.systemd.show_status=false"
      "systemd.show_status=false"
      "fbcon=nodefer"
      "video=efifb:nobgrt"
      "elevator=noop"
    ];

    initrd = {
      verbose = false;
      availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
    };

    consoleLogLevel = 0;
    kernelPackages = pkgs.linuxPackages;
  };

}
