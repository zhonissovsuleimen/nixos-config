{ pkgs, ... }:

{
  programs.plasma = {
    kwin = {
      effects = {
        desktopSwitching.animation = "off";
        minimization.animation = "off";
        windowOpenClose.animation = "off";

        wobblyWindows.enable = false;
        shakeCursor.enable = false;
        slideBack.enable = false;
        snapHelper.enable = false;
        translucency.enable = false;
      };
      edgeBarrier = 0;
      cornerBarrier = false;
    };

    configFile = {
      kwinrc."KDE"."AnimationDurationFactor" = 0;
      kwinrc."Effect-overview"."BorderActivate" = "";
      kwinrc."TabBox"."DelayTime" = 0;
      kwinrc."TabBox"."ShowDesktopMode" = true;
    };
  };
}
