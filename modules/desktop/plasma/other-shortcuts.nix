{
  programs.plasma = {
    shortcuts = {
      "Alacritty.desktop"._launch = "Meta+T";
      "nvim.desktop"._launch = "Meta+N";
      "services/Alacritty.desktop"._launch = "Meta+T";
      "services/nvim.desktop"._launch = "Meta+N";

      "KDE Keyboard Layout Switcher"."Switch to Next Keyboard Layout" = "Alt+Shift";

      kmix.decrease_microphone_volume = "Microphone Volume Down";
      kmix.decrease_volume = "Volume Down";
      kmix.decrease_volume_small = "Shift+Volume Down";
      kmix.increase_microphone_volume = "Microphone Volume Up";
      kmix.increase_volume = "Volume Up";
      kmix.increase_volume_small = "Shift+Volume Up";
      kmix.mic_mute = ["Microphone Mute" "Meta+Volume Mute"];
      kmix.mute = "Volume Mute";

      ksmserver."Lock Session" = ["Meta+L" "Screensaver"];

      mediacontrol.nextmedia = "Media Next";
      mediacontrol.pausemedia = "Media Pause";
      mediacontrol.playpausemedia = "Media Play";
      mediacontrol.previousmedia = "Media Previous";
      mediacontrol.stopmedia = "Media Stop";

      plasmashell."activate application launcher" = "Meta";
      plasmashell."activate task manager entry 1" = "Meta+1";
      plasmashell."activate task manager entry 2" = "Meta+2";
      plasmashell."activate task manager entry 3" = "Meta+3";
      plasmashell."activate task manager entry 4" = "Meta+4";
      plasmashell."activate task manager entry 5" = "Meta+5";
      plasmashell."activate task manager entry 6" = "Meta+6";
      plasmashell."activate task manager entry 7" = "Meta+7";
      plasmashell."activate task manager entry 8" = "Meta+8";
      plasmashell."activate task manager entry 9" = "Meta+9";

      #disabled
      plasmashell.clear-history = [ ];
      plasmashell.clipboard_action = [ ];
      plasmashell.cycle-panels = [ ];
      plasmashell.cycleNextAction = [ ];
      plasmashell.cyclePrevAction = [ ];
      plasmashell.edit_clipboard = [ ];
      plasmashell."manage activities" = [ ];
      plasmashell."next activity" = [ ];
      plasmashell."previous activity" = [ ];
      plasmashell.repeat_action = [ ];
      plasmashell."show dashboard" = [ ];
      plasmashell.show-barcode = [ ];
      plasmashell.show-on-mouse-pos = [ ];
      plasmashell."stop current activity" = [ ];
      plasmashell."switch to next activity" = [ ];
      plasmashell."switch to previous activity" = [ ];
      plasmashell."toggle do not disturb" = [ ];
      plasmashell."activate task manager entry 10" = [ ];

      mediacontrol.mediavolumedown = [ ];
      mediacontrol.mediavolumeup = [ ];
      mediacontrol.playmedia = [ ];

      ksmserver."Halt Without Confirmation" = [ ];
      ksmserver."Log Out" = [ ];
      ksmserver."Log Out Without Confirmation" = [ ];
      ksmserver.LogOut = [ ];
      ksmserver.Reboot = [ ];
      ksmserver."Reboot Without Confirmation" = [ ];
      ksmserver."Shut Down" = [ ];

      kaccess."Toggle Screen Reader On and Off" = [ ];

      "KDE Keyboard Layout Switcher"."Switch keyboard layout to English (US)" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to Russian" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to en" = [ ];
      "KDE Keyboard Layout Switcher"."Switch keyboard layout to ru" = [ ];
      "KDE Keyboard Layout Switcher"."Switch to Last-Used Keyboard Layout" = [ ];
    };
  };
}
