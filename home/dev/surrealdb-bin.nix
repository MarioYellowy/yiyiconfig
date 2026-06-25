{
  stdenv,
  fetchurl,
  autoPatchelfHook,
  glibc,
  gcc-unwrapped,
  lib,
}:

stdenv.mkDerivation rec {
  pname = "surrealdb-bin";
  version = "3.1.0";

  src = fetchurl {
    url = "https://github.com/surrealdb/surrealdb/releases/download/v${version}/surreal-v${version}.linux-amd64.tgz";
    hash = "sha256-qKffirEffeIq4UxkpGCepxRlx/if57Ai4Cn63cWHnkI=";
  };

  nativeBuildInputs = [ autoPatchelfHook ];
  buildInputs = [
    glibc
    gcc-unwrapped
  ];

  unpackPhase = ''
    tar -xzf $src
  '';

  installPhase = ''
    runHook preInstall
    mkdir -p $out/bin
    install -m755 surreal $out/bin/surreal
    runHook postInstall
  '';

  meta = with lib; {
    description = "SurrealDB - scalable document-graph database";
    homepage = "https://surrealdb.com";
    license = licenses.bsl11;
    platforms = [ "x86_64-linux" ];
    mainProgram = "surreal";
  };
}
