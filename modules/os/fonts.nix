{ pkgs, ... }:
{
  fonts = {
    packages = with pkgs; [
      monocraft
      nerd-fonts.fira-code
    ];

    fontconfig = {
      enable = true;
      defaultFonts.sansSerif = [
        "Monocraft"
        "Noto Sans"
      ];
      defaultFonts.serif = [
        "Monocraft"
        "Noto Serif"
      ];
      defaultFonts.monospace = [
        "Monocraft"
        "FiraCode Nerd Font Mono"
      ];
    };
  };
}
