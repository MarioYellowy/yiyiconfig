{ pkgs, pkgs-unstable, ... }: {
  home.packages = [
    pkgs.slint-lsp
    pkgs.rust-analyzer
    pkgs.just-lsp
    pkgs-unstable.harper
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
      languages = {
        Nix = {
          language_servers = [
            "nixd"
            "!nil"
          ];
        };
      };
      lsp = {
        rust-analyzer = {
          binary = {
            path = "${pkgs.rust-analyzer}/bin/rust-analyzer";
            arguments = [ ];
          };
        };
        clangd = {
          binary = {
            path = "${pkgs.clang-tools}/bin/clangd";
            arguments = [
              "--background-index"
              "--clang-tidy"
            ];
          };
        };
        jdtls = {
          binary = {
            path = "${pkgs.jdt-language-server}/bin/jdtls";
          };
        };
        harper-ls = {
          binary = {
            path = "${pkgs-unstable.harper}/bin/harper-ls";
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
        nixd = {
          binary = {
            path = "${pkgs.nixd}/bin/nixd";
          };
          initialization_options = {
            nixd = {
              formatting = {
                command = [ "nixfmt" ];
              };
            };
          };
        };
      };

      theme = {
        mode = "dark";
        dark = "GitHub Dark";
        light = "GitHub Light";
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
      ui_font_size = 15;
      load_direnv = "shell_hook";

      edit_predictions = {
        provider = "none";
      };

      project_panel = {
        hide_hidden = false;
        hide_gitignore = false;
      };

      terminal = {
        copy_on_select = true;
        font_size = 14;
      };
    };
  };
}
