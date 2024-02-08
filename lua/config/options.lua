
-- options.lua

vim.g.mapleader = " "

vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

vim.opt.clipboard:append("unnamedplus")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.ruler = true
vim.opt.confirm = true
vim.opt.scrolloff = 3
vim.opt.wrap = false
vim.opt.showmode = true
vim.opt.mouse = "a"
vim.opt.showtabline = 1
vim.opt.termguicolors = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 3
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.backspace = "indent,eol,start"
vim.opt.magic = true

vim.opt.encoding = "utf-8"

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.conceallevel = 0
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.updatetime = 300
vim.opt.writebackup = false
