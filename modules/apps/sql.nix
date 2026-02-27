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

  services.postgresql = {
    enable = true;
    ensureDatabases = [ "mydatabase" ];
    authentication = pkgs.lib.mkOverride 10 ''
      # TYPE  DATABASE  USER  ADDRESS         METHOD
      # Unix socket
      local   all       all                  trust
      # IPv4 localhost
      host    all       all   127.0.0.1/32   trust
      # IPv6 localhost
      host    all       all   ::1/128        trust
    '';
  };

  systemd.services.mysql = {
    wantedBy = [ "multi-user.target" ];
  };
  systemd.services.postgresql = {
    wantedBy = [ "multi-user.target" ];
  };

  networking.firewall.allowedTCPPorts = [ 3306 ];
}
