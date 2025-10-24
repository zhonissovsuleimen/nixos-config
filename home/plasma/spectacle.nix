{ ... }:

{
  programs.plasma = {
    configFile = {
      spectacle."General"."useReleaseToCapture" = true;
      spectacle."General"."clipboardGroup" = "PostScreenshotCopyImage";
      spectacle."GuiConfig"."captureOnClick" = true;
      spectacle."GuiConfig"."quitAfterSaveCopyExport" = true;
      spectacle."ImageSave"."imageCompressionQuality" = 100;
    };
  };
}
