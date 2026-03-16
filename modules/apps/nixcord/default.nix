{
  programs.nixcord = {
    enable = true;
    user = "sulya";

    discord.vencord.enable = false;
    discord.equicord.enable = true;

    config = {
      autoUpdate = false;
      autoUpdateNotification = false;
      notifyAboutUpdates = false;
    };
  };

  imports = [
    ./plugins
  ];
}

