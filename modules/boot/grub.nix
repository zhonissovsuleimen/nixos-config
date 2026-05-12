{
  boot.loader.grub = {
    enable = true;
    efiSupport = true;
    useOSProber = true;
    device = "nodev";
    default = 0;
    timeoutStyle = "hidden";
    configurationLimit = 5;
  };
}
