{ ... }: {
  programs.alacritty = {
    enable = true;

    settings = {
      window = {
        decorations = "Transparent";
        opacity = 0.95;
        blur = true;
        dynamic_title = true;
      };
      font = {
        normal = {
          family = "JetBrainsMono Nerd Font";
          style = "Regular";
        };
        bold = {
          family = "JetBrainsMono Nerd Font";
          style = "Bold";
        };
        italic = {
          family = "JetBrainsMono Nerd Font";
          style = "Italic";
        };
      };
      selection = {
        save_to_clipboard = true;
      };
    };
  };
}
