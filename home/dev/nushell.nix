{ ... }: {
  programs.nushell = {
    enable = true;
    envFile.source = ./nushell/env.nu;

    settings = {
        show_banner = false;
      };
  };
}
