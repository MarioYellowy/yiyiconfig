{
  pkgs,
  pkgs-unstable,
  ...
}: {
  home.packages = with pkgs;
    [
      rust-analyzer
    ]
    ++ [
      pkgs-unstable.package-version-server
    ];
}
