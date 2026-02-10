{
  programs.bash = {
    enable = true;
    shellAliases = {
      #nixos
      nrs = "sudo nixos-rebuild switch --flake ~/.nixos-config/";
      nrt = "sudo nixos-rebuild test --flake ~/.nixos-config/";

      #git
      gs = "git status";
      gd = "git diff";
      gds = "git diff --staged";

      #quick launch
      chess = "firefox -foreground -new-window chess.com -new-tab lichess.org/paste & exit";
      ff = "firefox -foreground & exit";
      ffp = "firefox -foreground -private-window & exit";
      gpt = "firefox -foreground -new-window chatgpt.com & exit";
      yt = "firefox -foreground -new-window youtube.com & exit";

      tg = "Telegram & exit";
    };
  };
}
