{ pkgs, ... }:

{
  programs.plasma = {
    powerdevil.AC = {
      powerProfile = "performance";
    };

    shortcuts = {
      org_kde_powerdevil.Hibernate = "Hibernate";
      org_kde_powerdevil.PowerDown = "Power Down";
      org_kde_powerdevil.PowerOff = "Power Off";
      org_kde_powerdevil.Sleep = "Sleep";
      org_kde_powerdevil.powerProfile = ["Battery" "Meta+B"];
      org_kde_powerdevil."Decrease Keyboard Brightness" = "Keyboard Brightness Down";
      org_kde_powerdevil."Decrease Screen Brightness" = "Monitor Brightness Down";
      org_kde_powerdevil."Decrease Screen Brightness Small" = "Shift+Monitor Brightness Down";
      org_kde_powerdevil."Increase Keyboard Brightness" = "Keyboard Brightness Up";
      org_kde_powerdevil."Increase Screen Brightness" = "Monitor Brightness Up";
      org_kde_powerdevil."Increase Screen Brightness Small" = "Shift+Monitor Brightness Up";
      org_kde_powerdevil."Toggle Keyboard Backlight" = "Keyboard Light On/Off";

      org_kde_powerdevil."Turn Off Screen" = [ ];
    };
  };
}
