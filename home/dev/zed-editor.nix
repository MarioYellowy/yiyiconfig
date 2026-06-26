{ ... }: {
  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "git-firefly"
      "toml"
      "html"
      "live-server"
      "discord-presence"
      "just"
      "slint"
      "markdownlint"
      "catppuccin-icons"
      "catppuccin"
      "lua"
      "csv"
      "rainbow-csv"
      "env"
      "nu"
    ];

    userSettings = {
      lsp = {
        rust-analyzer = {
          binary = {
            path = "/home/mario/.cargo/bin/rust-analyzer";
            args = [ ];
          };
        };
      };
      theme = {
        mode = "dark";
        dark = "Catppuccin Mocha";
        light = "Catppuccin Latte";
      };
      icon_theme = "Catppuccin Mocha";
      minimap = {
        show = "never";
      };
      allow_rewrap = "in_comments";
      autosave = {
        after_delay = {
          milliseconds = 100;
        };
      };
      code_lens = "on";
      rounded_selection = true;
      enable_language_server = true;
    };
  };
}
