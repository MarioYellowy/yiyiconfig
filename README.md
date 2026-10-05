# My YiYi Config in NixOS

**A chill config for just plug and play.**
**No cordial greetings**

## About

This repository contains a basic configuration for NixOS using flakes and home-manager,
with focus on school and dev environment, but with things for
playing as well. Currently use [Hyprland](https://hypr.land/) as compositor and
[Noctalia(V5)](https://noctalia.dev/) as desktop shell.

## Setup

In this point maybe you don't have configured your ssh, so the first step is clone with HTTPS, choose the path of your preference to clone the project first, once, run the next command:

```bash
git clone https://github.com/MarioYellowy/yiyiconfig.git
cd yiyiconfig
```

> [!NOTE]
> My recommendation for this point is install `just`, this simplifies the process of building, but you can continue with setup process manually if you want:
>
> ```bash
> nix-shell -p just
> ```
>
> Once you're inside the nix-shell you can execute the next command that include all the process of building:
> ```bash
> just build
> ```
> With that, the configuration is already done

Once you already are inside the repo locally, the next step is generate your own `hardware-configuration.nix`, the repo contains a `hardware-configuration.nix` file, but the configuration doesn't gonna work if you use it, so the first step is remove this file:

```bash
rm ./core/hardware-configuration.nix
```

Once you delete it, now you can generate your own `hardware-configuration.nix` with the next command, if you are in `nushell`:

```bash
sudo nixos-generate-config --show-hardware-config out> ./core/hardware-configuration.nix
```
for `bash`:

```bash
sudo nixos-generate-config --show-hardware-config > ./core/hardware-configuration.nix
```

Now you have the necessary to execute the configuration, by default you can execute the next command:

```bash
sudo nixos-rebuild switch --flake .#nixos
```

And that's it.

## Structure

```nushell
.
├── assets
├── core
│   ├── programs
│   └── services
├── home
│   ├── chill
│   │   ├── games
│   │   ├── hyprland
│   │   └── noctalia
│   └── dev
│       ├── editors
│       ├── languages
│       ├── nushell
│       ├── services
│       ├── starship
│       └── terminal_tools
└── templates
    └── rust
```

### About the Structure

This project contains the basic `configuration.nix` in the root where is defined the entry point for core and
some configurations for the environment packages, the compositor, and
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

- **Games:** An emulator and prismlauncher.
- **Hyprland:** To feel aesthetic.
  - Inside the folder is the configuration using [Lua](https://www.lua.org/).
- **Noctalia:** To feel more aesthetic.
- **Discord:** To chat with the pibes.
- **Flameshot:** Finally works for Wayland.
- **Obs:** Sometimes you need recording your screen or transmit on twitch.


### Inside Dev

- **Editors:**
  - **Idea:** For Java projects only, someday Kotlin.
  - **NeoVim:** To looks insane modifying your files inside a terminal.
  - **VSCode:** Sometimes you need to do JS developer things.
  - **Zed-editor:** A code editor that don't envy nothing to others code editors
  (Is blazing fast as well).
- **Languages:** A Place for Languages and LSP.
  - **CPP**
  - **Harper**
  - **Java**
  - **Just**
  - **Lua**
  - **Nix**
  - **Rust**
  - **Slint**
  - **Web**
- **Nushell:** A blazing fast shell.
- **Services**
- **Starship:** Aesthetic terminal.
- **Terminal tools:**
  - **Alacritty:** A blazing fast terminal emulator.
  - **Atuin:** For access to your history commands easily.
  - **Bottom:** A cross-platform graphical process/system monitor.
  - **Carapace:** To show the commands that you can use for each tool.
  - **Fastfetch:** Aesthetic terminal.
- **Direnv:** To streamline the dev environment in the projects.
- **Firefox:** I don't use firefox.
- **GCC:** Sometimes the system ask you for this library, only adds.
- **Git:** To make force push to your own projects.
- **SurrealDB-Bind:** In the moment I create this configuration the version number
3 is not official available on NixPkgs.
- **SurrealKit-bin:** no exists in Nixpkgs.
