{inputs, ...}: {
  imports = [
    inputs.noctalia.homeModules.default
    ./appearance.nix
    ./dock.nix
    ./shell.nix
    ./bar.nix
    ./plugins.nix
  ];
  programs.noctalia = {
    enable = true;

    settings = {
      wallpaper = {
        enabled = true;
        default.path = "/home/mario/Pictures/background.png";
        transition_on_startup = true;
      };

      lockscreen = {
        fingerprint = false;
      };

      audio = {
        enable_sounds = true;
        notification_sound = "/home/mario/Projects/yiyiconfig/assets/notification.wav";
      };
    };
  };
}
