{ ... }: {
  programs.direnv = {
    enable = true;
    nushell.enable = true;
    silent = true;
  };
}
