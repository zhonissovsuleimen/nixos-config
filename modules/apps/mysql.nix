{ pkgs, lib, ... }:
{
  environment.systemPackages = with pkgs; lib.mkAfter [
    dbeaver-bin
  ];

  services.mysql = {
    enable = true;
    package = pkgs.mysql84;
    # extraOptions = ''
    #   [mysqld]
    #   bind-address = 0.0.0.0
    # '';
  };

  systemd.services.mysql = {
    wantedBy = [ "multi-user.target" ];
  };

  networking.firewall.allowedTCPPorts = [ 3306 ];
}

