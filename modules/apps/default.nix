{
  nixosModules = [
    ./bash.nix
    ./nvf.nix

    ({ pkgs, ... }: {
      environment.systemPackages = with pkgs; [
        lshw
        evtest
        nvtopPackages.nvidia
        qpwgraph
        rnnoise-plugin
      ];

      programs = {
        steam.enable = true;
      };
    })
  ];

  hmModules = [
    ./vesktop
    ./spicetify.nix

    ({ pkgs, ... }: {
      home.packages = with pkgs; [
        firefox
        git
        telegram-desktop
        alacritty
      ];
    })
  ];
}
