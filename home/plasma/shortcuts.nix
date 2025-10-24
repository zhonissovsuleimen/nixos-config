{ ... }:
{
  programs.plasma = {
    krunner.shortcuts = {
      launch = "none";
      runCommandOnClipboard = "none";
    };

    spectacle.shortcuts = {
      captureActiveWindow = "Meta+Print";
      captureCurrentMonitor = "Print";
      captureEntireDesktop = null;
      captureRectangularRegion = "Meta+Shift+S";
      captureWindowUnderCursor = null;
      launch = null;
    };

    shortcuts = {
      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Alt+Shift";
      "kwin"."Edit Tiles" = "none";

      "plasmashell" = {
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

      "Alacritty.desktop"."_launch" = "Meta+T";
      "nvim.desktop"."_launch" = "Meta+N";
    };
  };
}
