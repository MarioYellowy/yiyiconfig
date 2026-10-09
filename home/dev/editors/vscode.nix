{pkgs, ...}: let
  harper = pkgs.vscode-utils.buildVscodeMarketplaceExtension {
    mktplcRef = {
      publisher = "elijah-potter";
      name = "harper";
      version = "2.3.0";
      sha256 = "sha256-l4TiJ6Kxty10ltthUi/KQ2nEGjcoJNuv6osjoB7ZR5c=";
    };
  };
in {
  programs.vscode = {
    enable = true;
    profiles.default = {
      extensions =
        (with pkgs.vscode-extensions; [
          jnoortheen.nix-ide
          biomejs.biome
          nefrob.vscode-just-syntax
          #icrawl.discord-vscode
          #repreng.csv
          mechatroner.rainbow-csv
          ritwickdey.liveserver
          catppuccin.catppuccin-vsc-icons
          catppuccin.catppuccin-vsc
        ])
        ++ [harper];

      userSettings = {
        "editor.cursorBlinking" = "smooth";
        "editor.cursorSmoothCaretAnimation" = "on";
        "editor.cursorStyle" = "line";
        "editor.fontFamily" = "JetBrainsMono Nerd Font";
        "editor.formatOnPaste" = true;
        "editor.formatOnSave" = true;

        "workbench.iconTheme" = "catppuccin-mocha";
        "workbench.colorTheme" = "Catppuccin Mocha";

        "terminal.integrated.copyOnSelection" = true;
        "terminal.integrated.fontFamily" = "JetBrainsMono Nerd Font";

        "harper.path" = "${pkgs.harper}/bin/harper-ls";

        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nixd";
        "nix.serverSettings" = {
          nixd = {
            formatting = {
              command = ["alejandra" "--quiet"];
            };
          };
        };

        "[nix]" = {
          "editor.defaultFormatter" = "jnoortheen.nix-ide";
        };

        "[javascript]" = {
          "editor.defaultFormatter" = "biomejs.biome";
          "editor.formatOnSave" = true;
          "editor.wordWrap" = "bounded";
          "files.insertFinalNewline" = true;
        };

        "[typescript]" = {
          "editor.defaultFormatter" = "vscode.typescript-language-features";
          "editor.formatOnSave" = true;
          "editor.wordWrap" = "bounded";
          "files.insertFinalNewline" = true;
        };
      };
    };
  };
}
