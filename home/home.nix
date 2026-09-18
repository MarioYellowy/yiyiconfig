{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.username = "mario";
  home.homeDirectory = "/home/mario";
  home.stateVersion = "26.05";

  imports = [
    ./dev/editors
    ./dev/languages
    ./dev/nushell
    ./dev/starship
    ./dev/terminal_tools
    ./dev/direnv.nix
    ./dev/firefox.nix
    ./dev/gcc.nix
    ./dev/git.nix
    ./chill/games
    ./chill/hyprland
    ./chill/noctalia
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
