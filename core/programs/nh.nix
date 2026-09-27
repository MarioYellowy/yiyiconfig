{
  programs.nh = {
    enable = true;
    clean.enable = true;
    clean.dates = "daily";
    clean.extraArgs = "-k 3 --no-direnv --optimise";
  };
}
