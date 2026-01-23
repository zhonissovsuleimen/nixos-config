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
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, plasma-manager, maccel, spicetify-nix, nixvim, ... } @inputs:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs { 
      inherit system; 
      config.allowUnfree = true; 
    };
    modules = import ./modules;
  in
  {
    nixosConfigurations.sulya-linux = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [
        ./nixos.nix
        home-manager.nixosModules.home-manager
        {
          home-manager.extraSpecialArgs = { inherit inputs; };
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.sulya = { 
            imports = [ 
              ./home-manager.nix
              spicetify-nix.homeManagerModules.default
            ] 
            ++ modules.hmModules;
          };
          home-manager.sharedModules = [ plasma-manager.homeModules.plasma-manager ];
        }
        maccel.nixosModules.default
        nixvim.nixosModules.nixvim
      ]
      ++ modules.nixosModules;
    };

    devShells.${system} = import ./devshells {
      inherit pkgs;
    };
  };
}
