{...}: {
  programs.nushell = {
    enable = true;
    envFile.source = ./env.nu;
    configFile.source = ./config.nu;

    settings = {
      show_banner = false;
    };
  };
}
