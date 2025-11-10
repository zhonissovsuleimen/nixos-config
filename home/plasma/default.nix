{ ... }:
{
  programs.plasma = {
    enable = true;
    overrideConfig = true;
  };

  imports = [
    ./input.nix
    ./kdeglobals.nix
    ./krunner.nix
    ./kwin.nix
    ./notifications.nix
    ./panels.nix
    ./powerdevil.nix
    ./spectacle.nix
    ./ui-theme.nix
    ./other.nix
    ./other-shortcuts.nix
  ];
}
