{ pkgs, ... }:

{
  programs.alacritty = {
    enable = true;
    theme = "github_dark_high_contrast";

    settings.terminal.shell = {
      program = "${pkgs.nushell}/bin/nu";
      args = [ "--login" ];
    };
  };
}
