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
    ./chill/discord.nix
  ];

  home.packages = with pkgs; [

  ];
}
