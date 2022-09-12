local opt = vim.opt
local cmd = vim.cmd

opt.termguicolors = true
opt.background = 'dark'
opt.mouse = 'a'
opt.encoding = 'utf-8'
opt.backup = false
opt.writebackup = false
opt.smarttab = true
opt.timeout = true
opt.timeoutlen = 100
opt.updatetime = 50
opt.showcmd = true
opt.smartindent = true
cmd('set expandtab')
opt.shiftwidth = 2
opt.tabstop = 2
opt.nu = true
opt.rnu = true
opt.clipboard = "unnamedplus"
opt.guifont = '*'

