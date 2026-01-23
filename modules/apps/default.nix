{
  nixosModules = [
    ./bash.nix
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
    ./vesktop
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
