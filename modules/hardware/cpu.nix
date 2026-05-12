{ pkgs, lib, ... }:
{
  hardware.cpu.intel.updateMicrocode = true;
  boot.kernelModules = [ "msr" ];

  environment.systemPackages = with pkgs; lib.mkAfter [
    undervolt
  ];

  systemd.services.undervolt = {
    description = "cpu undervolt";
    after = [ "multi-user.target" "post-resume.target" ];
    wantedBy = [ "multi-user.target" "post-resume.target" ];
    serviceConfig = {
      Type = "oneshot";
      ExecStartPre = "${pkgs.coreutils}/bin/sleep 10";
      ExecStart = "${pkgs.undervolt}/bin/undervolt -v --core -140 --cache -140";
      TimeoutStartSec = 30;
    };
  };
}
