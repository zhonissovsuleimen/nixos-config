{ ... }:
{
  #networking.hostName = "sulya-linux";
  #networking.networkmanager.enable = true;

  networking = {
    hostName = "sulya-linux";
    useDHCP = false;

    networkmanager.enable = false;
    wireless.enable = false;

    interfaces.enp8s0 = {
      ipv4.addresses = [{
        address = "192.168.100.51";
        prefixLength = 24;
      }];
    };

    defaultGateway = "192.168.100.1";
    nameservers = [ "8.8.8.8" "8.8.4.4" ];
  };
}
