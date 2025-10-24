{ pkgs, ... }:
{
  programs.plasma = {
    enable = true;

    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
      tooltipDelay = 350;
    };

    session = {
      sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
      general.askForConfirmationOnLogout = false;
    };

    configFile = {
      plasmarc."OSD".kbdLayoutChangedEnabled = false;
    };
  };

  imports = [
    ./kwin.nix
    ./panels.nix
    ./spectacle.nix
    ./input.nix
    ./krunner.nix
    ./powerdevil.nix
    ./kdeglobals.nix
    ./shortcuts.nix
  ];
}
