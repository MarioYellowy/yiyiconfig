{pkgs, ...}: {
  services.displayManager.noctalia-greeter = {
    enable = true;
    settings = {
      appearance = {
        scheme = "Synced";
        password_style = "random";
        hide_logo = true;
        power_buttons_position = "bottom-right";
        theme_mode = "dark";
        font_family = "JetBrainsMono Nerd Font";
      };

      appearance.palette = {
        primary = "#c6c6cd";
        on_primary = "#2f3036";
        secondary = "#c8c6c9";
        on_secondary = "#303033";
        tertiary = "#d0c3c8";
        on_tertiary = "#362e32";
        error = "#ffb4ab";
        on_error = "#690005";
        surface = "#141314";
        on_surface = "#e5e2e2";
        surface_variant = "#201f20";
        on_surface_variant = "#c7c6cb";
        outline = "#46464b";
        shadow = "#000000";
        hover = "#d0c3c8";
        on_hover = "#362e32";
      };

      appearance.wallpaper = {
        path = ../../assets/background.png;
      };

      cursor = {
        theme = "Bibata-Modern-Classic";
        size = 20;
        path = "${pkgs.bibata-cursors}/share/icons";
      };
    };
  };
}
