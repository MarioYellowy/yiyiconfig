{ pkgs, ... }: {
  home.packages = [ pkgs.slint-lsp ];

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
        slint-lsp = {
          binary = {
            path = "${pkgs.slint-lsp}/bin/slint-lsp";
          };
        };
        lua-language-server = {
          binary = {
            path = "${pkgs.lua-language-server}/bin/lua-language-server";
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
