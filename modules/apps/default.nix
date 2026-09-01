{
  nixosModules = [
    ./bash.nix
    ./coding-cli.nix
    ./nixvim
    ./terminal-tools.nix
    ./steam.nix
    ./octave.nix
  ];

  hmModules = [
    ./alacritty.nix
    ./mangohud.nix
    ./nixcord
    ./nushell.nix
    ./spicetify.nix
    ({ pkgs, ... }: {
      home.packages = with pkgs; [
        firefox
        git
        telegram-desktop
        gamemode
      ];
    })
  ];
}
