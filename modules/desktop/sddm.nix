{ pkgs, ... }:
let
  wallpaper = ../../assets/wallpapers/Revachol_Vista.png;
  revacholBreeze = pkgs.runCommand "revachol-breeze-sddm-theme" { } ''
    theme="$out/share/sddm/themes/revachol-breeze"
    mkdir -p "$theme"
    cp -r ${pkgs.kdePackages.plasma-desktop}/share/sddm/themes/breeze/. "$theme/"
    cat > "$theme/theme.conf.user" <<'EOF'
    [General]
    background=${wallpaper}
    EOF
  '';
in
{
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.displayManager.sddm.theme = "revachol-breeze";

  environment.systemPackages = [ revacholBreeze ];
}
