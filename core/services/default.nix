{...}: {
  imports = [
    ./pipewire.nix
    ./postgresql.nix
    ./greeter.nix
  ];

  services.power-profiles-daemon.enable = true;
  services.upower.enable = true;
  services.dbus.enable = true;
  services.gvfs.enable = true;
  services.gnome.gnome-keyring.enable = true;

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Disable the GNOME Desktop Environment.
  services.displayManager.gdm.enable = false;
  services.desktopManager.gnome.enable = false;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  services.pulseaudio.enable = false;
}
