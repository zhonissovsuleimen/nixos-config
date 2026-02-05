{
  programs.vesktop = {
    enable = true;

    settings = {
      arRPC = true;
      customTitleBar = true;
      disableMinSize = true;
      discordBranch = "stable";
      hardwareAcceleration = true;
      hardwareVideoAcceleration = true;
      minimizeToTray = true;
      staticTitle = true;
      tray = false;
    };

    vencord = {
      settings.plugins = {
        BetterFolders = {
          enabled = true;
          sidebar = true;
          sidebarAnim = true;
          closeAllFolders = true;
          closeAllHomeButton = true;
          forceOpen = false;
          keepIcons = false;
          showFolderIcon = "Always";
        };
        BetterSettings = {
          enabled = true;
          disableFade = true;
          organizeMenu = true;
          eagerLoad = true;
        };
        FakeNitro = {
          enabled = true;
          enableEmojiBypass = false;
          transformEmojis = false;
          enableStickerBypass = false;
          transformStickers = false;
          transformCompoundSentence = false;
          enableStreamQualityBypass = true;
          useHyperLinks = false;
          disableEmbedPermissionCheck = false;
        };
        GameActivityToggle = {
          enabled = true;
          oldIcon = false;
        };
        MemberCount = {
          enabled = true;
          toolTip = true;
          memberList = true;
          voiceActivity = true;
        };
        NewGuildSettings = {
          enabled = true;
          guild = true;
          messages = "Only @mentions";
          everyone = true;
          role = true;
          highlights = true;
          events = true;
          showAllChannels = true;
        };
        VolumeBooster = {
          enabled = true;
          multiplier = 3.0;
        };
      };

      themes = { fallout = ./themes/fallout-modified.css; };
      settings.enabledThemes = [ "fallout.css" ];
    };
  };
}

