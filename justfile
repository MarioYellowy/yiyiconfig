# Keep only the last 10 generations
remove-generations:
    sudo nix-env -p /nix/var/nix/profiles/system --delete-generations +10
    sudo nix-collect-garbage
