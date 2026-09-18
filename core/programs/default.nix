{...}: {
  imports = [./nix-ld.nix];

  programs.dconf.enable = true;

  programs.hyprland.enable = true;

  programs.steam.enable = true;
}
