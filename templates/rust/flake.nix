{
  description = "Development template for Rust projects";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    rust-overlay = {
          url = "github:oxalica/rust-overlay";
          inputs.nixpkgs.follows = "nixpkgs";
        };
  };

  outputs = { nixpkgs, rust-overlay, ...}:
    let
    system = "x86_64-linux";
    overlays = [ (import rust-overlay)];
    pkgs = import nixpkgs { inherit system overlays; };

    rustToolchain = pkgs.rust-bin.stable."1.95.0".default.override {
            extensions = [ "rust-src" "rust-analyzer" "rustfmt" "clippy" ];

          };
        in
        {
              devShells.${system}.default = pkgs.mkShell {
                buildInputs = [
                  rustToolchain

                  pkgs.pkg-config
                  pkgs.gcc
                ];
              };
            };

}
