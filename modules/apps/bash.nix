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
      ff = "firefox -foreground & exit";
      ffp = "firefox -foreground -private-window & exit";
      yt = "firefox -foreground -new-window youtube.com & exit";
      gpt = "firefox -foreground -new-window chatgpt.com & exit";
      tg = "Telegram & exit";
    };
  };
}
