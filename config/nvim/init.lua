-- Keybinds
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
	--{ "rose-pine/neovim", name = "rose-pine" },
	{"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
	--{"nyoom-engineering/oxocarbon.nvim"},
	{"dracula/vim", name = "dracula"},
	--{"cormacrelf/vim-colors-github", name = "GitHub Color Scheme"},
	{"neovim/nvim-lspconfig"},
	{"navarasu/onedark.nvim"},
	{'nvim-lualine/lualine.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' }},
}) 

-- Editor Settings

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.scrolloff = 8

vim.opt.incsearch = true
vim.opt.ignorecase = true --finally free!

require('lualine').setup()
