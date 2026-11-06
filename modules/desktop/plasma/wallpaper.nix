{ config, ... }:
let
  wallpaper = "${config.xdg.dataHome}/wallpapers/Revachol_Vista.png";
in
{
  xdg.dataFile."wallpapers/Revachol_Vista.png".source = ../../../assets/wallpapers/Revachol_Vista.png;

  programs.plasma.workspace = {
    inherit wallpaper;
    wallpaperFillMode = "preserveAspectCrop";
  };

  programs.plasma.kscreenlocker.appearance.wallpaper = wallpaper;
  programs.plasma.configFile.kscreenlockerrc."Greeter/Wallpaper/org.kde.image/General".FillMode = 2;
}
