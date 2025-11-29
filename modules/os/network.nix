{
  #networking.hostName = "sulya-linux";
  #networking.networkmanager.enable = true;
  networking = {
    hostName = "sulya-linux";
    useDHCP = false;

    networkmanager.enable = false;
    wireless.enable = false;
    resolvconf.enable = false;
  };

  systemd = {
    network = {
      enable = true;
      networks."10-enp8s0" = {
        matchConfig.Name = "enp8s0";
        address = [ "192.168.100.51/24" ];
        routes = [ { Gateway = "192.168.100.1"; } ];
        dns = [ "8.8.8.8" "8.8.4.4" ];
        linkConfig.RequiredForOnline = "routable";
      };

      wait-online.enable = false;
    };

    services.systemd-networkd-persistent-storage.enable = false;
  };
}
