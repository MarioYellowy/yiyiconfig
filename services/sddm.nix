{pkgs, ...}: {
  services.displayManager.sddm = {
    enable = true;

    wayland.enable = false;
    package = pkgs.kdePackages.sddm;
    extraPackages = with pkgs.kdePackages; [
      qtsvg
      qtdeclarative
      qt5compat
    ];

    theme = "pixie";
  };
}
