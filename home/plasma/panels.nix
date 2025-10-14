{ ... }:

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
          ];
        };
      }
      "org.kde.plasma.marginsseparator"
      "org.kde.plasma.systemtray"
      "org.kde.plasma.digitalclock"
    ];
  }];
}
