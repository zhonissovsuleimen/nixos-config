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
  };
}
