let
  apps = import ./apps;
  desktop = import ./desktop;
in
{
  nixosModules = [
    ./hardware
    ./os
    ./audio.nix
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

