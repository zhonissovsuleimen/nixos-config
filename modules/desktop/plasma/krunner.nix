{
  programs.plasma = {
    shortcuts = {
      "services/org.kde.krunner.desktop".RunClipboard = [ ];
      "services/org.kde.krunner.desktop"._launch = [ ];
    };

    configFile = {
      krunnerrc.General.ActivateWhenTypingOnDesktop = false;
      krunnerrc.General.activateWhenTypingOnDesktop = false;
      krunnerrc.General.historyBehavior = "Disabled";
      krunnerrc.Plugins.browserhistoryEnabled = false;
      krunnerrc.Plugins.browsertabsEnabled = false;
      krunnerrc.Plugins.calculatorEnabled = false;
      krunnerrc.Plugins.helprunnerEnabled = false;
      krunnerrc.Plugins.krunner_appstreamEnabled = false;
      krunnerrc.Plugins.krunner_bookmarksrunnerEnabled = false;
      krunnerrc.Plugins.krunner_charrunnerEnabled = false;
      krunnerrc.Plugins.krunner_colorsEnabled = false;
      krunnerrc.Plugins.krunner_dictionaryEnabled = false;
      krunnerrc.Plugins.krunner_katesessionsEnabled = false;
      krunnerrc.Plugins.krunner_killEnabled = false;
      krunnerrc.Plugins.krunner_konsoleprofilesEnabled = false;
      krunnerrc.Plugins.krunner_placesrunnerEnabled = false;
      krunnerrc.Plugins.krunner_plasma-desktopEnabled = false;
      krunnerrc.Plugins.krunner_recentdocumentsEnabled = false;
      krunnerrc.Plugins.krunner_sessionsEnabled = false;
      krunnerrc.Plugins.krunner_spellcheckEnabled = false;
      krunnerrc.Plugins.krunner_webshortcutsEnabled = false;
      krunnerrc.Plugins."org.kde.activities2Enabled" = false;
      krunnerrc.Plugins."org.kde.datetimeEnabled" = false;
      krunnerrc.Plugins.unitconverterEnabled = false;
      krunnerrc.Plugins.windowsEnabled = false;
      krunnerrc."Plugins/Favorites".plugins = "";
      krunnerrc.XwayLand.Scale = 1;
    };
  };
}
