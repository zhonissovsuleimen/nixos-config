let
  touchpad = "Libinput/10182/480/GXTP5100:00 27C6:01E0 Touchpad";
  mouse = "Libinput/1133/50503/Logitech USB Receiver";
in
{
  programs.plasma = {
    configFile = {
      kxkbrc.Layout.DisplayNames = "";
      kxkbrc.Layout.LayoutList = "us,ru";
      kxkbrc.Layout.Use = true;
      kxkbrc.Layout.VariantList = "";

      kcminputrc.Keyboard.NumLock = 0;

      kcminputrc."${touchpad}" = {
        DisableWhileTyping = false;
        Enabled = true;
        LeftHanded = false;
        MiddleButtonEmulation = false;
        NaturalScroll = true;
        PointerAcceleration = 0.75;
        PointerAccelerationProfile = 1;
        ScrollFactor = 0.5;
        TapAndDrag = true;
        TapToClick = true;
      };

      kcminputrc."${mouse}" = {
        Enabled = true;
        LeftHanded = false;
        MiddleButtonEmulation = false;
        NaturalScroll = false;
        PointerAcceleration = 0.0;
        PointerAccelerationProfile = 1;
        ScrollFactor = 1;
      };
    };
  };
}
