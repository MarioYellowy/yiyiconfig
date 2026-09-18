{pkgs, ...}: {
  # Bootloader.
  boot = {
    loader.grub = {
      enable = true;
      device = "/dev/sda";
      configurationLimit = 5;
      useOSProber = false;
    };

    # Use latest kernel.
    kernelPackages = pkgs.linuxPackages_latest;

    kernel.sysctl."fs.inotify.max_user_watches" = 524288;
    kernel.sysctl."fs.inotify.max_user_instances" = 512;
  };
}
