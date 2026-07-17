# My YiYi Config in NixOS

**A chill config for just plug and play.**
**No cordial greetings**

## About

This repository contains a basic configuration for NixOS using flakes and home-manager,
with focus on school and dev environment, but with things for
playing as well. Currently use [Hyprland](https://hypr.land/) as compositor and
[Noctalia(V4)](https://noctalia.dev/) as desktop shell.

## Structure

`
.
├── assets
│   ├── background.png
│   └── Profile.jpeg
├── configuration.nix
├── flake.lock
├── flake.nix
├── hardware-configuration.nix
├── home
│   ├── chill
│   │   ├── discord.nix
│   │   ├── flameshot.nix
│   │   ├── hyprland
│   │   │   ├── hyprland.lua
│   │   │   ├── input.lua
│   │   │   ├── keybinds.lua
│   │   │   ├── look-and-feel.lua
│   │   │   └── rules.lua
│   │   ├── hyprland.nix
│   │   ├── obs.nix
│   │   └── prismlauncher.nix
│   ├── dev
│   │   ├── alacritty.nix
│   │   ├── atuin.nix
│   │   ├── bottom.nix
│   │   ├── carapace.nix
│   │   ├── direnv.nix
│   │   ├── fastfetch.nix
│   │   ├── firefox.nix
│   │   ├── gcc.nix
│   │   ├── git.nix
│   │   ├── neovim.nix
│   │   ├── noctalia.nix
│   │   ├── nushell
│   │   │   ├── config.nu
│   │   │   └── env.nu
│   │   ├── nushell.nix
│   │   ├── starship
│   │   │   └── starship.toml
│   │   ├── starship.nix
│   │   ├── surrealdb-bin.nix
│   │   ├── surrealkit-bin.nix
│   │   ├── vscode.nix
│   │   └── zed-editor.nix
│   └── home.nix
├── README.md
└── templates
    └── rust
        └── flake.nix
`

### About the Structure

This project contains the basic `configuration.nix` in the root where is defined
some configurations for the environment packages, the compositor, the SDDM and
some default stuff.

In the `flake.nix` is the main part for import the rest of the modules, and the
output point for the templates.

> [!NOTE]
> The `hardware-configuration` is the default template that NixOS generates.

In the `assets` folder is the multimedia that was used for personalized a bit of
the desktop environment.

The `templates` folder is where live some templates for different things and focus
in some technologies, for example a basic [Rust](https://rust-lang.org/es/)
template for basic projects in the version 1.95.

Inside the `home` folder live the `home.nix` file that import the most of package
that is using in this configuration. Then, exists 2 main folder, one focuses in
dev-tools and other focuses in chill(The life is good).

### Inside Chill

- **Discord:** To chat with the pibes.
- **Flameshot:** Finally works for Wayland.
- **Hyprland:** To feel aesthetic.
  - Inside the folder is the configuration using [Lua](https://www.lua.org/).
- **Obs:** Sometimes you need recording your screen or transmit on twitch.
- **Prismlauncher:** A "chill de cojones" launcher for Maincra.

### Inside Dev

- **Alacritty:** A blazing fast terminal emulator.
- **Atuin:** For access to your history commands easily.
- **Bottom:** A cross-platform graphical process/system monitor.
- **Carapace:** To show the commands that you can use for each tool.
- **Direnv:** To streamline the dev environment in the projects.
- **Fastfetch:** Aesthetic terminal.
- **Firefox:** I don't use firefox.
- **GCC:** Sometimes the system ask you for this library, only adds.
- **Git:** To make force push to your own projects.
- **NeoVim:** To looks insane modifying your files inside a terminal.
- **Noctalia:** Good recommendation from our partner ArturoAtomPlay.
- **Nushell:** A blazing fast shell.
- **Starship:** Aesthetic terminal.
- **SurrealDB-Bind:** In the moment I create this configuration the version number
3 is not official available on NixPkgs.
- **SurrealKit-bin:** no exists in Nixpkgs.
- **VSCode:** Sometimes you need to do JS developer things.
- **Zed-editor:** A code editor that don't envy nothing to others code editors
(Is blazing fast as well).
