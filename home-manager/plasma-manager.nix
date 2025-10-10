{ config, pkgs, ... }:

let
  pm = builtins.fetchTarball https://github.com/nix-community/plasma-manager/archive/trunk.tar.gz;
in
{
  imports = [
    (import "${pm}/modules")
  ];

  programs.plasma = {
    enable = true;

    #windows.allowWindowsToRememberPositions = false;

    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
      tooltipDelay = 500;
    };

    session = {
      sessionRestore.restoreOpenApplicationsOnLogin = "startWithEmptySession";
      general.askForConfirmationOnLogout = false;
    };

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

    panels = [
      {
        floating = false;
	opacity = "opaque";
	widgets = [
	  "org.kde.plasma.kickoff"
	  #"org.kde.plasma.pager"
	  "org.kde.plasma.icontasks"
	  "org.kde.plasma.marginsseparator"
	  "org.kde.plasma.systemtray"
	  "org.kde.plasma.digitalclock"
	  #"org.kde.plasma.showdesktop"
	];
      }
    ];

    shortcuts."KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Alt+Shift";

    spectacle.shortcuts = {
      captureActiveWindow = "Meta+Print";
      captureCurrentMonitor = "Print";
      captureEntireDesktop = null;
      captureRectangularRegion = "Meta+Shift+S";
      captureWindowUnderCursor = null;
      launch = null;
    };

    input.keyboard = {
      layouts = [{layout="us,ru";}];
      numlockOnStartup = "on";
    };


    configFile = {
      kwinrc."KDE"."AnimationDurationFactor" = 0;
      kwinrc."Effect-overview"."BorderActivate" = "";
      kwinrc."TabBox"."DelayTime" = 0;
      kwinrc."TabBox"."ShowDesktopMode" = true;

      spectacle."General"."useReleaseToCapture" = true;
      spectacle."General"."clipboardGroup" = "PostScreenshotCopyImage";
      spectacle."GuiConfig"."captureOnClick" = true;
      spectacle."GuiConfig"."quitAfterSaveCopyExport" = true;
      spectacle."ImageSave"."imageCompressionQuality" = 100;

      krunnerrc."General"."activateWhenTypingOnDesktop" = false;
    };

  };
}
