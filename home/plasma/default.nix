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

    shortcuts."KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Alt+Shift";

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
  ];
}
