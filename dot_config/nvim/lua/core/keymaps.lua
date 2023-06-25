vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n","<C-n>", "<cmd> Neotree source=filesystem reveal=true position=left<CR>", opts)

-- vim.keymap.set('<C-n>', "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" )

--local M = {}
--M.nvimtree = {
--	plugin = true,
--
--	n = {
--		-- toggle
--		["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
--
--		-- focus
--		["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "Focus nvimtree" },
--	}
--}
