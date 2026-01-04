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
    nvf.url = "github:NotAShelf/nvf";
    rust-overlay = {
      url = "github:oxalica/rust-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, plasma-manager, maccel, spicetify-nix, nvf, rust-overlay, ... } @inputs:
  let
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
        nvf.nixosModules.default
        ({ pkgs, ... }: {
          nixpkgs.overlays = [ rust-overlay.overlays.default ];
          environment.systemPackages = [ pkgs.rust-bin.stable.latest.default ];
        })
      ]
      ++ modules.nixosModules;
    };
  };
}
