{
  description = "Base flake";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    plasma-manager = {
      url = "github:nix-community/plasma-manager/trunk";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
    maccel.url = "github:Gnarus-G/maccel";
  };

  outputs = { nixpkgs, home-manager, plasma-manager, maccel, ... } @inputs:
  {
    nixosConfigurations.sulya-linux = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./nixos

        home-manager.nixosModules.home-manager
        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.sulya = import ./home;
          home-manager.sharedModules = [ plasma-manager.homeModules.plasma-manager ];
        }
        maccel.nixosModules.default
      ];
    };
  };
}
