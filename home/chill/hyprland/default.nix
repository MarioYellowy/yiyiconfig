{...}: {
  wayland.windowManager.hyprland = {
    enable = true;
    package = null;
    portalPackage = null;
    extraConfig = builtins.readFile ./hyprland.lua;
  };

  xdg.configFile."hypr/look-and-feel.lua".source = ./look-and-feel.lua;
  xdg.configFile."hypr/input.lua".source = ./input.lua;
  xdg.configFile."hypr/keybinds.lua".source = ./keybinds.lua;
  xdg.configFile."hypr/rules.lua".source = ./rules.lua;
}
