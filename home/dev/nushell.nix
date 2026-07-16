{ ... }: {
  programs.nushell = {
    enable = true;
    envFile.source = ./nushell/env.nu;
    configFile.source = ./nushell/config.nu;

    settings = {
      show_banner = false;
    };
  };
}
