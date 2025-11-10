{ ... }:
{
  programs.plasma = {
    workspace = {
      lookAndFeel = "org.kde.breezedark.desktop";
    };

    configFile = {
      ksplashrc.KSplash.Engine = "none";
      ksplashrc.KSplash.Theme = "None";
    };
  };
}
