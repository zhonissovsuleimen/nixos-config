{ pkgs, ... }:
{
  programs.noisetorch.enable = true;

  systemd.user.services.noisetorch = {
    description = "NoiseTorch auto-start";
    wantedBy = [ "default.target" ];
    after = [ "graphical-session.target" ];

    serviceConfig = {
      ExecStart = "${pkgs.noisetorch}/bin/noisetorch -i";
      Restart = "on-failure";
    };
  };

  # fixes Error loading PulseAudio Module: PulseAudio error: commandLoadModule -> No such entity
  # https://www.reddit.com/r/cachyos/comments/1so77q8/noisetorch_not_loading/
  systemd.user.services.pipewire-pulse = {
    environment = {
      LADSPA_PATH = "/tmp:/usr/lib64/ladspa:/usr/lib/ladspa:";
    };
  };

}
