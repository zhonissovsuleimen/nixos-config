{
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    wireplumber.enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;
  };

  services.pulseaudio.enable = false;
systemd.user.services.pipewire-pulse = {
  environment = {
    LADSPA_PATH = "/tmp:/usr/lib64/ladspa:/usr/lib/ladspa:";
  };
};

  security.rtkit.enable = true;

  imports = [ ./noisetorch.nix ];
}
