{ ... }: {
  programs.git = {
    enable = true;

    settings = {
      user.name = "MarioYellowy";
      user.email = "mario03eche@gmail.com";
      pull.rebase = "true";
      init.defaultBranch = "main";
    };
  };
}
