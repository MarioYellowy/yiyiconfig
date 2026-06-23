{ ... }: {
  wayland.windowManager.hyprland = {
    enable = true;
    package       = null;
    portalPackage = null; 
    extraConfig = builtins.readFile ./hyprland/hyprland.lua;
  };

  xdg.configFile."hypr/look-and-feel.lua".source = ./hyprland/look-and-feel.lua;
  xdg.configFile."hypr/input.lua".source = ./hyprland/input.lua;
  xdg.configFile."hypr/keybinds.lua".source = ./hyprland/keybinds.lua;
  xdg.configFile."hypr/rules.lua".source = ./hyprland/rules.lua;
}
