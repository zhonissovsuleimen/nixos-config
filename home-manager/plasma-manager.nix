{ config, pkgs, ... }:

let
  pm = builtins.fetchTarball https://github.com/nix-community/plasma-manager/archive/trunk.tar.gz;
  apps = "~/.nix-profile/share/applications";
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

    panels = [{
      floating = false;
      opacity = "opaque";
      widgets = [
        "org.kde.plasma.kickoff"
        "org.kde.plasma.icontasks"
        "org.kde.plasma.marginsseparator"
        "org.kde.plasma.systemtray"
        "org.kde.plasma.digitalclock"
      ];
    }];

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
      layouts = [{
        layout="us,ru";
      }];
      numlockOnStartup = "on";
    };

    input.mice = [{
      enable = true;
      name = "Logitech USB Receiver";
      vendorId = "046d";
      productId = "c547";
      leftHanded = false;
      middleButtonEmulation = false;
      acceleration = 0.0;
      accelerationProfile = "none";
      naturalScroll = false;
      scrollSpeed = 1;
    }];

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
      krunnerrc."XwayLand"."Scale" = 1;
      krunnerrc."Plugins"."browserhistoryEnabled" = false;
      krunnerrc."Plugins"."browsertabsEnabled" = false;
      krunnerrc."Plugins"."calculatorEnabled" = false;
      krunnerrc."Plugins"."helprunnerEnabled" = false;
      krunnerrc."Plugins"."krunner_appstreamEnabled" = false;
      krunnerrc."Plugins"."krunner_bookmarksrunnerEnabled" = false;
      krunnerrc."Plugins"."krunner_charrunnerEnabled" = false;
      krunnerrc."Plugins"."krunner_dictionaryEnabled" = false;
      krunnerrc."Plugins"."krunner_katesessionsEnabled" = false;
      krunnerrc."Plugins"."krunner_killEnabled" = false;
      krunnerrc."Plugins"."krunner_konsoleprofilesEnabled" = false;
      krunnerrc."Plugins"."krunner_placesrunnerEnabled" = false;
      krunnerrc."Plugins"."krunner_recentdocumentsEnabled" = false;
      krunnerrc."Plugins"."krunner_sessionsEnabled" = false;
      krunnerrc."Plugins"."krunner_spellcheckEnabled" = false;
      krunnerrc."Plugins"."krunner_webshortcutsEnabled" = false;
      krunnerrc."Plugins"."org.kde.activities2Enabled" = false;
      krunnerrc."Plugins"."org.kde.datetimeEnabled" = false;
      krunnerrc."Plugins"."unitconverterEnabled" = false;
      krunnerrc."Plugins"."windowsEnabled" = false;

      plasmarc."OSD".kbdLayoutChangedEnabled = false;
    };

  };
}
