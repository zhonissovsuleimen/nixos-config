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
    shortcuts."plasmashell" = {
      "activate application launcher" = "Meta";
      "clipboard_action" = "none";
      "cycle-panels" = "none";
      "manage activities" = "none";
      "show dashboard" = "none";
      "show-on-mouse-pos" = "none";
      "stop current activity" = "none";
      "switch to next activity" = "none";
      "switch to previous activity" = "none";
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
  ];
}
