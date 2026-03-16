{
  programs.nixcord.config.plugins.newGuildSettings = {
    enable = true;

    events = true;
    everyone = true;
    guild = true;
    highlights = true;
    messages = 1;
    mobilePush = false;
    role = true;
    showAllChannels = true;
    voiceChannels = false;
  };
}
