local wk = require("which-key")

vim.g.mapleader = ' '

wk.register({
  ["<Leader>Q"] = { "<Cmd>q<CR>", "Quit" },
  ["<Leader>e"] = { "<Cmd>NvimTreeToggle<CR>", "explorer" },
  ["<Leader>f"] = {
    name = "+file",
    s = { "<Cmd>write<CR>", "Save" },
  },
  ["<Leader>t"] = {
      name = "+tab",
      N = { "<Cmd>tabnew<CR>", "New-tab" },
      c = { "<Cmd>tabclose<CR>", "Tab-close" },
      n = { "<Cmd>tabnext<CR>", "Tab-next" },
      p = { "<Cmd>tabprevious<CR>", "Tab-previous" },
  },
 ["<Leader>b"] = {
      name = "+buffer",
      N = { "<Cmd>enew<CR>", "New-buffer" },
      d = { "<Cmd>bdelete<CR>", "Delete-buffer" },
      n = { "<Cmd>bnext<CR>", "Next-buffer" },
      p = { "<Cmd>bprevious<CR>", "Previous-buffer" },
  },
  ["<Leader>l"] = {
      name = "+LSP",
      a = { "<Cmd>lua vim.lsp.buf.code_action()<CR>", "action" },
      d = { "<Cmd>lua vim.diagnostic.open_float()<CR>", "diagnostic" },
      h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover"},
      I = { "<Cmd>Mason<CR>", "Installer" },
  },
  ["<Leader>P"] = {
      name = "+Packer",
      S = { "<Cmd>PackerSync<CR>", "Sync" },
      s = { "<Cmd>PackerStatus<CR>", "Status" },
      u = { "<Cmd>PackerUpdate<CR>", "Update" },
      c = { "<Cmd>PackerClean<CR>", "Clean" },
  },
  ["<Leader>T"] = {
      name = "+NvimTree",
      r = { "<Cmd>NvimTreeRefresh<CR>", "refresh" },
      t = { "<Cmd>NvimTreeToggle<CR>", "toggle" },
  },
  ["<Leader>w"] = {
      name = "+window",
      c = { "<C-w>c", "Close" },
      j = { "<C-w>j", "Down" },
      k = { "<C-w>k", "Up" },
      h = { "<C-w>h", "Left" },
      l = { "<C-w>l", "Right" },
      q = { "<C-w>q", "Quit-window" },
      s = {
          name = "+split",
          v = { "<C-w>v", "Vertically-split" },
          h = { "<C-w>h", "Horizontally-split" },
      },
  },
  ["<Leader>;"] = {
      name = "+other",
      s = { "<Cmd>source %<CR>", "source %" },
      t = { "<Cmd>term<CR>", "term" },
  },
})

