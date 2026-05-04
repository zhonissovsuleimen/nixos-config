{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    theme = "github_dark_high_contrast";

    settings = {
      font.size = 12.5;

      terminal.shell = {
        program = "${pkgs.nushell}/bin/nu";
        args = [ "--login" ];
      };
    };
  };
}
