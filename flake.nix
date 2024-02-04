{
  description = "A very basic flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};

	outputs = { self, nixpkgs, flake-utils, ... }: {
        overlays.default = import ./overlay.nix;
    } // flake-utils.lib.eachDefaultSystem (system:
	let 

	pkgs = import nixpkgs {
		inherit system;
		overlays = [
			self.overlays.default
		];
	};

	in rec {
        packages.default = pkgs.neovimc;

		devShells.default = pkgs.mkShell {
			packages = (with pkgs; [
				neovim-configured
			]);
		};

        devShell = devShells.default;
	});
}
