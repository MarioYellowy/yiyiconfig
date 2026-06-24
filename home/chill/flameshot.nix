{ pkgs, ... }: {
  services.flameshot = {
    enable = true;
    settings = {
      General = {
        disabledTrayIcon = true;
        showStartupLaunchMessage = false;
        useGrimAdapter = true;
      };
    };
  };
  home.packages = with pkgs; [ grim ];

  systemd.user.services.flameshot = {
    Service = {
      Environment = [
        "XDG_CURRENT_DESKTOP=sway"
        "WAYLAND_DISPLAY=wayland-1"
      ];
    };
  };
}
