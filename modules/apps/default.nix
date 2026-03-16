{
  nixosModules = [
    ./bash.nix
    ./sql.nix
    ./nixvim

    ({ pkgs, ... }: {
      environment.systemPackages = with pkgs; [
        lshw
        evtest
        nvtopPackages.nvidia
        qpwgraph
        rnnoise-plugin
        tree
      ];

      programs = {
        steam.enable = true;
      };
    })
  ];

  hmModules = [
    ./nixcord
    ./alacritty.nix
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
