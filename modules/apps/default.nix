{
  nixosModules = [
    ./bash.nix
    ./codex.nix
    ./nixvim
    ./terminal-tools.nix
    ./steam.nix
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
