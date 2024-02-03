final: prev: {
    neovim-configured = prev.neovim.override {
        configure = {
            customRC = ''
                luafile ${./lua/_options.lua}
                luafile ${./lua/_keymaps.lua}
                luafile ${./lua/_custom_functions.lua}
                luafile ${./lua/_theme.lua}
            '';
            packages.myVimPlugins = with prev.vimPlugins; {
                start = [
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
}
