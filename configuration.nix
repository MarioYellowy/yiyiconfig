# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).
{
  pkgs,
  pkgs-unstable,
  inputs,
  ...
}: {
  imports = [
    ./boot
    ./hardware-configuration.nix
    ./programs
    ./services
  ];

  nixpkgs.config.allowUnfree = true;

  hardware.bluetooth.enable = true;

  security.pam.services.sddm.enableGnomeKeyring = true;

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.gc = {
  };

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

  # Enable networking
  networking.networkmanager.enable = true;
  # networking.nameservers = ["1.1.1.1"];

  # Set your time zone.
  time.timeZone = "America/Mexico_City";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";

  security.rtkit.enable = true;

  xdg.portal.enable = true;
  xdg.portal.extraPortals = [pkgs.xdg-desktop-portal-hyprland];

  # Enable touchpad support (enabled default in most desktopManager).
  # services.xserver.libinput.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."mario" = {
    shell = pkgs.nushell;
    isNormalUser = true;
    description = "mario";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  virtualisation.virtualbox.host.enable = true;
  users.extraGroups.vboxusers.members = ["mario"];

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

      (inputs.pixie-sddm.packages.${pkgs.stdenv.hostPlatform.system}.pixie-sddm.override {
        background = ./assets/background.png;
        avatar = ./assets/Profile.jpeg;
        primaryColor = "#B3C8FF";
        accentColor = "#3F5F91";
        autoColor = true;
        backgroundColor = "#1A1C1E";
        textColor = "#E2E2E6";
        fontFamily = "JetBrains Mono";
        fontSize = 13;
      })
    ])
    ++ (with pkgs-unstable; [
      brave
      zed-discord-presence
    ]);

  fonts.packages = with pkgs; [
    nerd-fonts.jetbrains-mono
    fira-code
    fira-code-symbols
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };

  # List services that you want to enable:

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;

  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "26.05"; # Did you read the comment?
  system.autoUpgrade.enable = true;
  system.autoUpgrade.allowReboot = false;
}
