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


    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
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
    };


      panels = [
        {
          floating = false;
	  opacity = "opaque";
	}
      ];
  };
}
