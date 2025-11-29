{
  nixosModules = [
    ({ pkgs, ...}: {
      services.desktopManager.plasma6.enable = true;

      environment.plasma6.excludePackages = with pkgs.kdePackages; [
        kate
        okular
        elisa
        konsole
      ];
    })
  ];

  hmModules = [
    ({ ... }: {
      programs.plasma = {
        enable = true;
        overrideConfig = true;
      };

      imports = [
        ./input.nix
        ./kdeglobals.nix
        ./krunner.nix
        ./kwin.nix
        ./notifications.nix
        ./panels.nix
        ./powerdevil.nix
        ./spectacle.nix
        ./ui-theme.nix
        ./other.nix
        ./other-shortcuts.nix
      ];
    })
  ];
}
