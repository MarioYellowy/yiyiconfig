{...}: {
  programs.firefox = {
    enable = true;

    policies = {
      DisablePocket = true;
      DisableAccounts = true;
      DisableFirefoxScreenshots = true;
      DisplayBookmarksToolbar = "never";
      DisplayMenuBar = "default-off";
      SearchBar = "unified";

      ExtensionSettings = {
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}
