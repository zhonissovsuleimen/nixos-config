{ ... }:
let
  wallpaper = ../../../assets/wallpapers/Revachol_Vista.png;
in
{
  programs.plasma.workspace = {
    inherit wallpaper;
    wallpaperFillMode = "preserveAspectCrop";
  };

  programs.plasma.kscreenlocker.appearance.wallpaper = wallpaper;
  programs.plasma.configFile.kscreenlockerrc."Greeter/Wallpaper/org.kde.image/General".FillMode = 2;
}
