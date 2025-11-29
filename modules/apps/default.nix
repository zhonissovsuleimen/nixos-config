{
  nixosModules = [
    ./bash.nix

    ({ pkgs, ... }: {
      environment.systemPackages = with pkgs; [
        lshw
        evtest
        nvtopPackages.nvidia
      ];

      programs = {
        steam.enable = true;
        noisetorch.enable = true;
      };
    })
  ];

  hmModules = [
    ./neovim.nix
    ./vesktop

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
