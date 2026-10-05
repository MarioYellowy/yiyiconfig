build:
    rm ./core/hardware-configuration.nix
    sudo nixos-generate-config --show-hardware-config >./core/hardware-configuration.nix
    sudo nixos-rebuild switch --flake .#nixos
