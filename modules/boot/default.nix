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

    initrd = {
      availableKernelModules = [ "xhci_pci" "nvme" "usb_storage" "usbhid" "sd_mod" ];
    };

    kernelPackages = pkgs.linuxPackages;
  };

}
