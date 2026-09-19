{
  pkgs,
  pkgs-unstable,
  ...
}: {
  imports = [
    ./core
  ];

  nixpkgs.config.allowUnfree = true;

  hardware.bluetooth.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  networking.hostName = "nixos"; # Define your hostname.

  # Enable networking
  networking.networkmanager.enable = true;

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  security.rtkit.enable = true;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-hyprland];

  virtualisation.virtualbox.host.enable = true;

  environment.systemPackages =
    (with pkgs; [
      python3
      nodejs
      pnpm
      jdk
      just
      harper

      unzip
      libreoffice
      nautilus
      baobab
      vlc
      dnsutils
      loupe
    ])
    ++ (with pkgs-unstable; [
      brave
      zed-discord-presence
    ]);

  system.stateVersion = "26.05"; # Did you read the comment?
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;
}
