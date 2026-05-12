let
  apps = import ./apps;
  desktop = import ./desktop;
in
{
  nixosModules = [
    ./audio
    ./boot
    ./drivers
    ./hardware
    ./os
    ./users.nix
  ]
  ++ apps.nixosModules
  ++ desktop.nixosModules;

  hmModules = [ 
  ]
  ++ apps.hmModules
  ++ desktop.hmModules;
}

