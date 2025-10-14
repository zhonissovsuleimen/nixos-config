{ ... }:

{
  programs.plasma = {
    spectacle.shortcuts = {
      captureActiveWindow = "Meta+Print";
      captureCurrentMonitor = "Print";
      captureEntireDesktop = null;
      captureRectangularRegion = "Meta+Shift+S";
      captureWindowUnderCursor = null;
      launch = null;
    };

    configFile = {
      spectacle."General"."useReleaseToCapture" = true;
      spectacle."General"."clipboardGroup" = "PostScreenshotCopyImage";
      spectacle."GuiConfig"."captureOnClick" = true;
      spectacle."GuiConfig"."quitAfterSaveCopyExport" = true;
      spectacle."ImageSave"."imageCompressionQuality" = 100;
    };
  };
}
