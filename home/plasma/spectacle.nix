{ ... }:

{
  programs.plasma = {
    shortcuts = {
      "services/org.kde.spectacle.desktop".ActiveWindowScreenShot = "Meta+Print";
      "services/org.kde.spectacle.desktop".CurrentMonitorScreenShot = "Print";
      "services/org.kde.spectacle.desktop".RectangularRegionScreenShot = "Meta+Shift+S";
      "services/org.kde.spectacle.desktop"._launch = [ ];
    };

    configFile = {
      spectaclerc.General.clipboardGroup = "PostScreenshotCopyImage";
      spectaclerc.General.launchAction = "DoNotTakeScreenshot";
      spectaclerc.General.rememberSelectionRect = "Never";
      spectaclerc.General.showCaptureInstructions = false;
      spectaclerc.General.showMagnifier = "ShowMagnifierNever";
      spectaclerc.General.useReleaseToCapture = true;
      spectaclerc.GuiConfig.includeShadow = false;
      spectaclerc.GuiConfig.quitAfterSaveCopyExport = true;
      spectaclerc.ImageSave.imageCompressionQuality = 100;
      spectaclerc.ImageSave.translatedScreenshotsFolder = "Screenshots";
      spectaclerc.VideoSave.translatedScreencastsFolder = "Screencasts";
    };
  };
}
