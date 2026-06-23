{ pkgs, ... }: {
  home.username = "mario";
  home.homeDirectory = "/home/mario";
  home.stateVersion = "26.05";

  imports = [
    ./dev/git.nix
    ./dev/nushell.nix
    ./dev/alacritty.nix
    ./dev/atuin.nix
  ];

  home.packages = with pkgs; [

  ];
}
