let
  plasma = import ./plasma;
in
{
  nixosModules = [
    ./sddm.nix
  ]
  ++ plasma.nixosModules;

  hmModules = [
  ]
  ++ plasma.hmModules;
}
