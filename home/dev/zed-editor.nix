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
  };
}
