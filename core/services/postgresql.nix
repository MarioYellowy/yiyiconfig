{pkgs, ...}: {
  services.postgresql = {
    package = pkgs.postgresql;
    extensions = ps: with ps; [pg_uuidv7];
    enable = true;
    ensureDatabases = [
      "mydatabase"
    ];
    authentication = pkgs.lib.mkOverride 10 ''
      #type database DBuser auth-method
      local all      all    trust
      host  all      all    127.0.0.1/32   trust
      host  all      all    ::1/128        trust
    '';
  };
}
