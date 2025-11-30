let
  apps = import ./apps;
  desktop = import ./desktop;
in
{
  nixosModules = [
    ./audio
    ./hardware
    ./os
    ./maccel.nix
    ./users.nix
  ]
  ++ apps.nixosModules
  ++ desktop.nixosModules;

  hmModules = [ 
  ]
  ++ apps.hmModules
  ++ desktop.hmModules;
}

