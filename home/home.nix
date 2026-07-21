{ pkgs, pkgs-unstable, ... }: {
  home.username = "mario";
  home.homeDirectory = "/home/mario";
  home.stateVersion = "26.05";

  imports = [
    ./dev/git.nix
    ./dev/nushell.nix
    ./dev/alacritty.nix
    ./dev/atuin.nix
    ./dev/bottom.nix
    ./dev/fastfetch.nix
    ./dev/gcc.nix
    ./dev/firefox.nix
    ./dev/carapace.nix
    ./dev/neovim.nix
    ./dev/starship.nix
    ./dev/noctalia.nix
    ./dev/zeditor.nix
    ./dev/vscode.nix
    ./dev/direnv.nix
    ./chill/discord.nix
    ./chill/hyprland.nix
    ./chill/prismlauncher.nix
    ./chill/flameshot.nix
    ./chill/obs.nix
  ];

  home.packages =
    (with pkgs; [
      # LSPs and Dev Tools
      rust-analyzer
      just-lsp
      slint-lsp
      lua-language-server
      harper

      # Nix
      nixd
      nixfmt

      # Java
      jdt-language-server
      maven
      gradle
      jetbrains.idea-oss

      # SurrealDB
      surrealdb-bin
      surrealkit-bin

      # C/C++
      gcc
      cmake
      gdb
      lldb
      clang-tools
      handbrake

    ])
    ++ (with pkgs-unstable; [
      skyemu
      gimp
      postman
      tree
      whatsapp-electron
      wev
      package-version-server
      teams-for-linux
      pear-desktop

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
}
