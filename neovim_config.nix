{ stdenv, pkgs }:
stdenv.mkDerivation {
    name = "neovim-config";

    src = ./.;

    installPhase = ''
        mkdir -p $out
        cp -r . $out
    '';
}
