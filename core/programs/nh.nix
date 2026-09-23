{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.extraArgs = "-k 3 --no-direnv --optimise";
  };
}
