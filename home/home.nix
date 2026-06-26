{ pkgs, ... }: {
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
    ./dev/lsd.nix
    ./dev/neovim.nix
    ./dev/starship.nix
    ./dev/noctalia.nix
    ./dev/zed-editor.nix
    ./chill/discord.nix
    ./chill/hyprland.nix
    ./chill/prismlauncher.nix
    ./chill/flameshot.nix
    ./chill/obs.nix
  ];

  home.packages = with pkgs; [
    surrealdb-bin
  ];
}
