{ ... }: {
  programs.git = {
    enable = true;
    userName = "MarioYellowy";
    userEmail = "mario03eche@gmail.com";
    extraConfig = {
      pull.rebase = "true";
      init.defaultBranch = "main";
    };
  };
}
