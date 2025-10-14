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
  };
}
