{...}: {
  programs.noctalia.settings = {
    bar = {
      default = {
        background_opacity = 0.5;
        font_family = "JetBrainsMono Nerd Font";
        widget_spacing = 5;
        capsule = true;
        start = ["workspaces" "cpu" "media"];
        end = ["tray" "clipboard" "notifications" "control-center" "session"];
      };
    };
    widget = {
      clock = {
        format = "{:%A} - {:%I:%M %p}";
      };
    };
  };
}
