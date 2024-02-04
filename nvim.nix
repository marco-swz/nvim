{ pkgs, stdenv, runtimeShell }:
stdenv.mkDerivation rec {
    name = "nvimc";

    src = ./.;

    buildInputs = [ pkgs.neovim pkgs.makeWrapper ];

    binScript = ''
        #!${runtimeShell}
        XDG_CONFIG_HOME=${placeholder "out"} ${pkgs.neovim}/bin/nvim $@
    '';

    passAsFile = [ "binScript" ];

    installPhase = ''
        mkdir -p $out/bin
        mkdir -p $out/nvim
        cp -r ./. $out/nvim
        cp $binScriptPath $out/bin/nvimc
        chmod +x $out/bin/nvimc
    '';
}
