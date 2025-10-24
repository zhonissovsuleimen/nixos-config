{ ... }:

{
  programs.plasma = {
    configFile = {
      kdeglobals."General"."TerminalApplication" = "alacritty";
      kdeglobals."General"."TerminalService" = "Alacritty.desktop";

      kdeglobals."KScreen"."ScaleFactor" = 1.0;
    };
  };
}
