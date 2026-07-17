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
    ./dev/zed-editor.nix
    ./dev/vscode.nix
    ./dev/direnv.nix
    ./chill/discord.nix
    ./chill/hyprland.nix
    ./chill/prismlauncher.nix
    ./chill/flameshot.nix
    ./chill/obs.nix
  ];

  home.packages =
      ( with pkgs; [
        surrealdb-bin
        surrealkit-bin
        #C++
        gcc
        clang-tools
        cmake
        gdb
        lldb
        #Java
        jdk
        jdt-language-server
        maven
        gradle
        jetbrains.idea-oss
      ])
      ++ ( with pkgs-unstable; [
        skyemu
        just
        harper
        gimp
        postman
        tree
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
