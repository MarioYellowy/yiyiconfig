{...}: {
  imports = [
    ./programs
    ./services
    ./boot.nix
    ./fonts.nix
    ./hardware-configuration.nix
    ./users
  ];
}
