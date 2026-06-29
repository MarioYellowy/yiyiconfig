{
  stdenv,
  fetchurl,
  autoPatchelfHook,
  glibc,
  gcc-unwrapped,
  lib,
}:
stdenv.mkDerivation rec {
  pname = "surrealkit-bin";
  version = "0.7.0";

  src = fetchurl {
    url = "https://github.com/surrealdb/surrealkit/releases/download/v${version}/surrealkit-v${version}-x86_64-unknown-linux-gnu.tar.gz";
    hash = "sha256-aG1X2qwT6p88K3U9jU7HXdx4uLru+KiXe79iEQkYYSI=";
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
    install -m755 surrealkit $out/bin/surrealkit
    runHook postInstall
  '';

  meta = with lib; {
    description = "SurrealKit - migrations, seeding and testing for SurrealDB";
    homepage = "https://github.com/surrealdb/surrealkit";
    license = licenses.asl20;
    platforms = [ "x86_64-linux" ];
    mainProgram = "surrealkit";
  };
}
