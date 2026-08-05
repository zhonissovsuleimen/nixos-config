{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.qpwgraph
  ];

  systemd.user.services.qpwgraph = {
    description = "QPWGraph - PipeWire Graph Manager";
    wantedBy = [ "graphical-session.target" ];
    after = [ "graphical-session.target" "pipewire.service" ];
    serviceConfig = {
      ExecStart = "${pkgs.qpwgraph}/bin/qpwgraph -m";
      Restart = "on-failure";
      RestartSec = "3s";
    };
  };
}
