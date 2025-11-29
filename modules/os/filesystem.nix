{
  fileSystems."/" = {
    device = "/dev/disk/by-uuid/bb73e0c5-4088-4646-94ee-454276d7a791";
    fsType = "ext4";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/2C00-AC10";
    fsType = "vfat";
    options = [ "fmask=0077" "dmask=0077" ];
    noCheck = true;
  };
}
