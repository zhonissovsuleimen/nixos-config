{ ... }:

{
  programs.plasma = {
    input.keyboard = {
      layouts = [{
        layout="us,ru";
      }];
      numlockOnStartup = "on";
    };

    input.mice = [{
      enable = true;
      name = "Logitech USB Receiver";
      vendorId = "046d";
      productId = "c547";
      leftHanded = false;
      middleButtonEmulation = false;
      acceleration = 0.0;
      accelerationProfile = "none";
      naturalScroll = false;
      scrollSpeed = 1;
    }];

    input.touchpads = [{
      enable = true;
      name = "GXTP5100:00 27C6:01E0 Touchpad";
      vendorId = "27C6";
      productId = "01E0";
      disableWhileTyping = false;
      leftHanded = false;
      middleButtonEmulation = false;
      pointerSpeed = 0.75;
      scrollSpeed=0.5;
      naturalScroll = true;
      tapToClick = true;
      tapAndDrag = true;
      accelerationProfile = "none";
    }];
  };
}
