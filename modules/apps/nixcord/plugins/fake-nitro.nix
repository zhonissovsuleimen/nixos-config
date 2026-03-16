{
  programs.nixcord.config.plugins.fakeNitro = {
    enable = true;

    disableEmbedPermissionCheck = false;
    enableEmojiBypass = false;
    enableStickerBypass = false;
    enableStreamQualityBypass = true;
    transformCompoundSentence = false;
    transformEmojis = false;
    transformStickers = false;
    useEmojiHyperLinks = false;
    useStickerHyperLinks = false;
  };
}
