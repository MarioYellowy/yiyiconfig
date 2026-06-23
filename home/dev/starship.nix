{ config, ... }:
{
  programs.starship = {
    enable = true;
    enableNushellIntegration = true;

    configPath = "${config.xdg.configHome}/starship.toml";

    settings = {};
    presets = [];
  };

  home.file.".config/starship.toml".source = ./starship/starship.toml;
}
