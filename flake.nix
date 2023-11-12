{
  description = "A very basic flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
		flake-utils.url = "github:numtide/flake-utils";
	};

	outputs = { self, nixpkgs, flake-utils, ... }: 
	flake-utils.lib.eachDefaultSystem (system:
	let 

	nvim-overlay = final: prev: 
	let
		nvim-config = prev.vimUtils.buildVimPlugin {
			name = "nvim-config";
			src = ./.;
		};
	in {
		neovim = prev.neovim.override {
			configure = {
				customRC = ''
					lua require('_telescope.lua')
				'';
				packages.myVimPlugins = with prev.vimPlugins; {
					start = [
						nvim-config
						mason-nvim
						telescope-nvim
					];
				};
			};
		};
	};

	pkgs = import nixpkgs {
		inherit system;
		overlays = [
			nvim-overlay
		];
	};

	in {
		devShell = pkgs.mkShell {

			packages = (with pkgs; [
				neovim
			]);
		};
	});
}
