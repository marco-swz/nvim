{
  description = "A very basic flake";

	inputs = {
		nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";
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
					luafile ${./lua/options.lua}
					luafile ${./lua/keymaps.lua}
					luafile ${./lua/custom_functions.lua}
				'';
				packages.myVimPlugins = with prev.vimPlugins; {
					start = [
						nvim-config
                        nightfox-nvim
						mason-nvim
                        cmp-nvim-lsp
                        cmp-buffer
                        cmp-path
                        cmp-cmdline
                        cmp_luasnip
                        luasnip
                        fidget-nvim
                        plenary-nvim
						{
                            plugin = nvim-treesitter.withPlugins (p: with p; [
                                gitignore
                                comment
                                markdown_inline
                                dockerfile
                                json
                                bash
                                ini
                                yaml
                                toml
                            ]);
                            config = ''
                                luafile ${./lua/_treesitter.lua}
                            '';
                        }
						{
                            plugin = nvim-treesitter-context;
                            config = ''
                                luafile ${./lua/_treesitter_context.lua}
                            '';
                        }
						{
                            plugin = nvim-cmp;
                            config = ''
                                luafile ${./lua/_cmp.lua}
                            '';
                        }
						{
                            plugin = nvim-autopairs;
                            config = ''
                                luafile ${./lua/_autopairs.lua}
                            '';
                        }
						{
                            plugin = telescope-nvim;
                            config = ''
                                luafile ${./lua/_telescope.lua}
                            '';
                        }
						{
                            plugin = harpoon;
                            config = ''
                                luafile ${./lua/_harpoon.lua}
                            '';
                        }
						{
                            plugin = nvim-lspconfig;
                            config = ''
                                luafile ${./lua/_lsp.lua}
                            '';
                        }
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
