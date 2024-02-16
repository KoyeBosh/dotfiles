vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
vim.keymap.set("", "<Space>", "<Nop>", opts)

-- Built-in spellchecker
vim.opt.spell = true

-- Vim file manager
vim.keymap.set("n", "<leader>ee", vim.cmd.Ex, opts)

-- Move text up and down
vim.keymap.set("n", "<A-j>", ":m +1<CR>", opts)
vim.keymap.set("n", "<A-k>", ":m -2<CR>", opts)
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- Line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tabs and spacing
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true

-- Buffer switching
vim.keymap.set("n", "H", vim.cmd.bprevious, opts)
vim.keymap.set("n", "L", vim.cmd.bnext, opts)
vim.keymap.set("n", "<leader>d", ":bd<CR>", opts)
vim.keymap.set("n", "<leader>D", ":bd!<CR>", opts)

-- Stay in visual mode after indenting
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Don't re-yank what I'm pasting over
vim.keymap.set("v", "p", '"*dP', opts)

vim.opt.wrap = false
vim.opt.scrolloff = 8

vim.opt.incsearch = true
vim.opt.ignorecase = true --finally free!

