{...}: {
  programs.noctalia.settings = {
    shell = {
      avatar_path = ../../../assets/Profile.jpeg;

      settings_window_translucent = true;
      time_format = "{:%A}-{:%I:%M %p}";
    };
    shell.greeter_sync = {
      auto_sync = true;
    };
  };
}
