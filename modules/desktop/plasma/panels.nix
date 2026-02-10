{ pkgs, ... }:
{
  programs.plasma.panels = [{
    floating = false;
    opacity = "opaque";

    widgets = [
      "org.kde.plasma.kickoff"
      {
        iconTasks = {
          launchers = [
            "applications:firefox.desktop"
            "applications:vesktop.desktop"
            "applications:steam.desktop"
          ];

          behavior.wheel = {
            switchBetweenTasks = false;
            ignoreMinimizedTasks = false;
          };
        };
      }
      "org.kde.plasma.marginsseparator"
      "org.kde.plasma.systemtray"
      "org.kde.plasma.digitalclock"
    ];
  }];


  # custom launcher
  xdg.desktopEntries.steam = {
    name = "Steam";
    icon = "steam";
    exec = "${pkgs.steam}/bin/steam -nofriendsui -nochatui %U";
    terminal = false;

    categories = [ "Network" "FileTransfer" "Game" ];
    mimeType = [ "x-scheme-handler/steam" "x-scheme-handler/steamlink" ];
  };
}
