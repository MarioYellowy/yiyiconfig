{ ... }: {

  programs.zed-editor = {
    enable = true;

    extensions = [
      "nix"
      "git-firefly"
      "toml"
      "html"
      "live-server"
      "just"
      "slint"
      "java"
      "markdownlint"
      "catppuccin-icons"
      "lua"
      "csv"
      "rainbow-csv"
      "env"
      "nu"
    ];

    userSettings = {
      disable_ai = true;
      languages = {
        Nix = {
          language_servers = [ "nixd" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Rust = {
          language_servers = [ "rust-analyzer" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        C = {
          language_servers = [ "clangd" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        "C++" = {
          language_servers = [ "clangd" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Java = {
          language_servers = [ "jdtls" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Just = {
          language_servers = [ "just-lsp" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Slint = {
          language_servers = [ "slint-lsp" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Lua = {
          language_servers = [ "lua-language-server" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
        Markdown = {
          language_servers = [ "harper-ls" ];
          format_on_save = "on";
          formatter = "language_server";
          soft_wrap = "bounded";
          ensure_final_newline_on_save = true;
        };
      };

      theme = {
        mode = "dark";
        dark = "Ayu Dark";
        light = "Ayu Dark";
      };

      icon_theme = "Catppuccin Mocha";
      minimap = {
        show = "never";
      };

      ui_font_family = "JetBrainsMono Nerd Font";
      ui_font_size = 15;
      buffer_font_family = "JetBrainsMono Nerd Font";
      allow_rewrap = "in_comments";
      auto_indent_on_paste = true;
      autosave = "on_focus_change";
      confirm_quit = false;
      diagnostics_max_severity = "all";
      code_lens = "on";
      current_line_highlight = "all";
      selection_highlight = true;
      rounded_selection = true;
      hide_mouse = "never";
      enable_language_server = true;
      show_completions_on_input = true;
      show_completion_documentation = true;
      load_direnv = "direct";

      scrollbar = {
        diagnostics = "all";
      };

      edit_predictions = {
        provider = "none";
      };

      active_pane_modifiers = {
        border_size = 0.1;
      };

      tabs = {
        close_position = "right";
        file_icons = true;
        git_status = true;
      };

      git = {
        branch_picker = {
          show_author_name = true;
        };
      };

      project_panel = {
        hide_hidden = false;
        hide_gitignore = false;
        button = true;
        dock = "left";
        file_icons = true;
        folder_icons = true;
        drag_and_drop = true;
        hide_root = false;
      };

      session = {
        restore_unsaved_buffers = true;
        trust_all_worktrees = true;
      };

      drag_and_drop_selection = {
        enabled = true;
        delay = 300;
      };

      toolbar = {
        quick_actions = false;
        agent_review = false;
        code_actions = false;
      };

      inlay_hints = {
        enabled = true;
        show_type_hints = true;
        show_parameter_hints = true;
        show_other_hints = true;
        show_background = false;
      };

      terminal = {
        copy_on_select = true;
        font_size = 14;
        font_family = "JetBrainsMono Nerd Font";
      };

      file_scan_exclusions = [
        "**/.git"
        "**/target"
        "**/.direnv"
        "**/node_modules"
      ];
    };
  };
}
