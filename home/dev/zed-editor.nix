{ pkgs, ... }: {
  home.packages = [
    pkgs.slint-lsp
    pkgs.rust-analyzer
    pkgs.just-lsp
    pkgs.harper
  ];

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
            path = "${pkgs.rust-analyzer}/bin/rust-analyzer";
            arguments = [ ];
          };
        };
        harper-ls = {
          binary = {
            path = "${pkgs.harper}/bin/harper-ls";
            arguments = [ "--stdio" ];
          };
        };
        just-lsp = {
          binary = {
            path = "${pkgs.just-lsp}/bin/just-lsp";
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
      autosave = "off";
      code_lens = "on";
      rounded_selection = true;
      enable_language_server = true;
      show_completions_on_input = true;
      show_completion_documentation = true;

      edit_predictions = {
        provider = "none";
      };

      terminal = {
        copy_on_select = true;
      };
    };
  };
}
