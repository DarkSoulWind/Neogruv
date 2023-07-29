vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.number = true
vim.o.background = "dark"
vim.opt.list = true
vim.opt.listchars:append("tab:> ")
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cursorline = true
vim.opt.cursorcolumn = true
vim.opt.swapfile = false
vim.opt.wrap = true
vim.opt.ttyfast = true
--[[ vim.opt.spell = true ]]

-- Relative line numbers
vim.opt.rnu = true
vim.opt.ts = 2
vim.opt.sts = 2
vim.opt.sw = 2
vim.opt.et = true
vim.opt.ai = true
vim.opt.si = true

-- Enable highlighting when yanking
vim.cmd([[
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank({higroup="IncSearch", timeout=150})
augroup END
]])
