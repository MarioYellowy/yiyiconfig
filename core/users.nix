{pkgs, ...}: {
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users."mario" = {
    shell = pkgs.nushell;
    isNormalUser = true;
    description = "mario";
    extraGroups = [
      "networkmanager"
      "wheel"
    ];
  };

  users.extraGroups.vboxusers.members = ["mario"];
}
