{ config, pkgs, inputs, ... }:

{
	programs.neovim = 
		let
			toLua = str: "lua << EOF\n${str}\nEOF\n";
			toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
			in
			{
			enable = true;

			viAlias = true;
			vimAlias = true;
			vimdiffAlias = true;

			extraPackages = with pkgs; [
				lua-language-server

				xclip
				wl-clipboard
			];

			plugins = with pkgs.vimPlugins; [
				cmp_luasnip
				cmp-nvim-lsp
				lush-nvim
				nvim-cmp
				telescope-fzf-native-nvim
				{
					plugin = nvim-cmp;
					config = toLuaFile ./nvim/plugin/cmp.lua;
				}
				{
					plugin = bluloco-nvim;
					config = toLuaFile ./nvim/plugin/bluloco.lua;
				}
				{
					plugin = lualine-nvim;
					config = toLuaFile ./nvim/plugin/lualine.lua;
				}
				{
					plugin = telescope-nvim;
					config = toLuaFile ./nvim/plugin/telescope.lua;
				}
				{
					plugin = (nvim-treesitter.withPlugins (p: [
						p.tree-sitter-nix
						p.tree-sitter-vim
						p.tree-sitter-bash
						p.tree-sitter-lua
						p.tree-sitter-python
						p.tree-sitter-json
						p.tree-sitter-java
						p.tree-sitter-kotlin
						p.tree-sitter-yaml
						p.tree-sitter-json
					]));
					config = toLuaFile ./nvim/plugin/treesitter.lua;
				}
			];

			extraLuaConfig = ''
				${builtins.readFile ./nvim/options.lua}
			'';
		};
}
