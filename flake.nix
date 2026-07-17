{
  description = "YiyiNixOS configuration with Noctalia";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    pixie-sddm.url = "github:xCaptaiN09/pixie-sddm";

    noctalia = {
      url = "github:noctalia-dev/noctalia/legacy-v4";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    inputs@{
      self,
      nixpkgs,
      nixpkgs-unstable,
      home-manager,
      hyprland,
      pixie-sddm,
      ...
    }:
    let
      system = "x86_64-linux";
      pkgs-unstable = import nixpkgs-unstable {
        inherit system;
        config.allowUnfree = true;
      };
      in
    {
      templates = {
              rust = {
                path = ./flakes/rust;
                description = "Base template for Rust projects";
              };
            };

            defaultTemplate = self.templates.rust;

      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs pkgs-unstable; };
        modules = [
          ./configuration.nix
          {
            nixpkgs.config.allowUnfree = true;
            nixpkgs.overlays = [
              (final: prev: {
                surrealdb-bin = final.callPackage ./home/dev/surrealdb-bin.nix { };
                surrealkit-bin = final.callPackage ./home/dev/surrealkit-bin.nix { };
              })
            ];
          }

          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.mario = import ./home/home.nix;
            home-manager.extraSpecialArgs = { inherit inputs pkgs-unstable; };
          }
        ];
      };
    };
}
