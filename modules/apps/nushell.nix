{ lib, ... }:

{
  programs.nushell = {
    enable = true;
    settings = {
      show_banner = false;
    };
    environmentVariables = {
      PROMPT_COMMAND = lib.hm.nushell.mkNushellInline ''
        {||
          let path = ($env.PWD | str replace $env.HOME "~")
          let host = ((sys host) | get hostname | split row "." | first)
          $"\n[($env.USER)@($host):($path)]"
        }
      '';
      PROMPT_INDICATOR = "$ ";
    };

    shellAliases = {
      nrs = "sudo nixos-rebuild switch --flake ~/.nixos-config/";
      nrt = "sudo nixos-rebuild test --flake ~/.nixos-config/";
      gs = "git status";
      gd = "git diff";
      gds = "git diff --staged";
    };

    extraConfig = ''
      def chess [] { ^setsid -f firefox -foreground -new-window chess.com -new-tab lichess.org/paste; exit }
      def ff [] { ^setsid -f firefox -foreground; exit }
      def ffp [] { ^setsid -f firefox -foreground -private-window; exit }
      def gpt [] { ^setsid -f firefox -foreground -new-window chatgpt.com; exit }
      def tg [] { ^setsid -f Telegram; exit }
      def yt [] { ^setsid -f firefox -foreground -new-window youtube.com; exit }
    '';
  };
}
