local opt = vim.opt
local cmd = vim.cmd
local api = vim.api

opt.termguicolors = true
opt.background = "dark"
opt.mouse = "a"
opt.encoding = "utf-8"
opt.backup = false
opt.writebackup = false
opt.smarttab = true
opt.updatetime = 50
opt.timeoutlen = 50
opt.showcmd = true
opt.smartindent = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.nu = true
opt.rnu = true
opt.clipboard = "unnamedplus"
opt.guifont = "*"
opt.swapfile = false
opt.linebreak = true
cmd 'colorscheme torte'


vim.keymap.set("i", "<c-l>", "<ESC>")

return {}
