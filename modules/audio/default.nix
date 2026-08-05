{
  services.pulseaudio.enable = false;
  services.pipewire = {
    enable = true;
    pulse.enable = true;
    wireplumber.enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;
  };

  systemd.user.services.pipewire-pulse = {
    environment = {
      LADSPA_PATH = "/tmp:/usr/lib64/ladspa:/usr/lib/ladspa:";
    };
  };

  security.rtkit.enable = true;

  imports = [ 
    ./noisetorch.nix 
    ./qpwgraph.nix
  ];
}
