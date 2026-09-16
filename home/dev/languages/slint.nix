{pkgs, ...}: {
  home.packages = with pkgs; [
    slint-lsp
  ];
}
