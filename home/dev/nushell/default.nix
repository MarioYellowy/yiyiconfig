{pkgs-unstable, ...}: {
  programs.nushell = {
    enable = true;
    package = pkgs-unstable.nushell;
    envFile.source = ./env.nu;
    configFile.source = ./config.nu;

    settings = {
      show_banner = false;
    };
  };
}
