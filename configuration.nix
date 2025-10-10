{ config, pkgs, ... }:

let 
  username = "sulya";
  hm = builtins.fetchTarball https://github.com/nix-community/home-manager/archive/release-25.05.tar.gz;
in
{
  imports =
    [
      ./hardware-configuration.nix
      ./graphics.nix
      (import "${hm}/nixos")
    ];

  # Bootloader.
  boot.loader.grub.enable = true;
  boot.loader.grub.efiSupport = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.useOSProber = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages;

  networking.hostName = "${username}-linux"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Oral";

  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "en_US.UTF-8";
    LC_IDENTIFICATION = "en_US.UTF-8";
    LC_MEASUREMENT = "en_US.UTF-8";
    LC_MONETARY = "en_US.UTF-8";
    LC_NAME = "en_US.UTF-8";
    LC_NUMERIC = "en_US.UTF-8";
    LC_PAPER = "en_US.UTF-8";
    LC_TELEPHONE = "en_US.UTF-8";
    LC_TIME = "en_US.UTF-8";
  };

  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

  users.users.${username}= {
    isNormalUser = true;
    extraGroups = [ "networkmanager" "wheel" ];
  };

  home-manager.users.${username} = { pkgs, ... } : {
    home.packages = with pkgs; [
      firefox
      git
      lshw
    ];


    programs.neovim = {
      enable = true;

      extraPackages = [ pkgs.wl-clipboard ];
      extraConfig = ''
        set clipboard+=unnamedplus
      '';
    };

    home.stateVersion = "25.05";
  };


  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [

  ];


  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;



  system.stateVersion = "25.05";
}
