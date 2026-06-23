{ pkgs, ... }: {
  home.username = "mario";
  home.homeDirectory = "/home/mario";
  home.stateVersion = "26.05";
  home.packages = with pkgs; [

  ];
}
