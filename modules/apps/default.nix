{
  nixosModules = [
    ./bash.nix
    ./codex.nix
    ./nixvim
    ./terminal-tools.nix
    ./steam.nix
  ];

  hmModules = [
    ./nixcord
    ./alacritty.nix
    ./nushell.nix
    ./spicetify.nix
    ({ pkgs, ... }: {
      home.packages = with pkgs; [
        firefox
        git
        telegram-desktop
      ];
    })
  ];
}
