{...}: {
  programs.noctalia.settings = {
    theme = {
      mode = "dark";
      source = "wallpaper";
      builtin = "Catppuccin";
      shell_mode = "dark";
    };

    shell = {
      font_family = "JetBrainsMono Nerd Font";
      lang = "en";
    };
  };
}
