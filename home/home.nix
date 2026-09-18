{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.username = "mario";
  home.homeDirectory = "/home/mario";
  home.stateVersion = "26.05";

  imports = [
    ./dev/editors/editors.nix
    ./dev/languages/languages.nix
    ./dev/nushell/nushell.nix
    ./dev/starship/starship.nix
    ./dev/terminal_tools/terminal_tools.nix
    ./dev/direnv.nix
    ./dev/firefox.nix
    ./dev/gcc.nix
    ./dev/git.nix
    ./chill/games/games.nix
    ./chill/hyprland/hyprland.nix
    ./chill/noctalia/noctalia.nix
    ./chill/discord.nix
    ./chill/flameshot.nix
    ./chill/obs.nix
  ];

  home.packages =
    (with pkgs; [
      # SurrealDB
      surrealdb-bin
      surrealkit-bin

      # Extras
      handbrake
      openshot-qt
      google-chrome
    ])
    ++ (with pkgs-unstable; [
      gimp
      postman
      tree
      whatsapp-electron
      wev
      teams-for-linux
    ]);

  gtk = {
    enable = true;
    theme = {
      name = "Adwaita-dark";
      package = pkgs.gnome-themes-extra;
    };
  };

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
    };
  };

  home.pointerCursor = {
    name = "Bibata-Modern-Classic";
    package = pkgs.bibata-cursors;
    size = 20;
    gtk.enable = true;
    x11.enable = true;
  };
  services.easyeffects.enable = true;
}
