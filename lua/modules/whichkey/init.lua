local status_ok, wk = pcall(require, "which-key")
if not status_ok then
  return
end

vim.g.mapleader = ' '

local setup = {
  plugins = {
    marks = true, -- shows a list of your marks on ' and `
    registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
    spelling = {
      enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
      suggestions = 20, -- how many suggestions should be shown in the list?
    },
    -- the presets plugin, adds help for a bunch of default keybindings in Neovim
    -- No actual key bindings are created
    presets = {
      operators = false, -- adds help for operators like d, y, ... and registers them for motion / text object completion
      motions = true, -- adds help for motions
      text_objects = true, -- help for text objects triggered after entering an operator
      windows = true, -- default bindings on <c-w>
      nav = true, -- misc bindings to work with windows
      z = true, -- bindings for folds, spelling and others prefixed with z
      g = true, -- bindings for prefixed with g
    },
  },
  -- add operators that will trigger motion and text object completion
  -- to enable all native operators, set the preset / operators plugin above
  -- operators = { gc = "Comments" },
  key_labels = {
    -- override the label used to display some keys. It doesn't effect WK in any other way.
    -- For example:
    -- ["<space>"] = "SPC",
    -- ["<cr>"] = "RET",
    -- ["<tab>"] = "TAB",
  },
  icons = {
    breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
    separator = "➜", -- symbol used between a key and it's label
    group = "+", -- symbol prepended to a group
  },
  popup_mappings = {
    scroll_down = "<c-d>", -- binding to scroll down inside the popup
    scroll_up = "<c-u>", -- binding to scroll up inside the popup
  },
  window = {
    border = "rounded", -- none, single, double, shadow
    position = "bottom", -- bottom, top
    margin = { 1, 0, 1, 0 }, -- extra window margin [top, right, bottom, left]
    padding = { 2, 2, 2, 2 }, -- extra window padding [top, right, bottom, left]
    winblend = 0,
  },
  layout = {
    height = { min = 4, max = 25 }, -- min and max height of the columns
    width = { min = 20, max = 50 }, -- min and max width of the columns
    spacing = 3, -- spacing between columns
    align = "left", -- align columns left, center or right
  },
  ignore_missing = true, -- enable this to hide mappings for which you didn't specify a label
  hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " }, -- hide mapping boilerplate
  show_help = true, -- show help message on the command line when the popup is visible
  triggers = "auto", -- automatically setup triggers
  -- triggers = {"<leader>"}, -- or specify a list manually
  triggers_blacklist = {
    -- list of mode / prefixes that should never be hooked by WhichKey
    -- this is mostly relevant for key maps that start with a native binding
    -- most people should not need to change this
    i = { "j", "k" },
    v = { "j", "k" },
  },
}

local opts = {
  mode = "n", -- NORMAL mode
  prefix = "", -- I've set the leader key in this file previously.
  buffer = nil, -- Global mappings. Specify a buffer number for buffer local mappings
  silent = true, -- use `silent` when creating keymaps
  noremap = true, -- use `noremap` when creating keymaps
  nowait = true, -- use `nowait` when creating keymaps
}


local mappings = {
  ["<Leader>Q"] = { "<Cmd>quit!<CR>", "Quit" },
  ["<Leader>e"] = { "<Cmd>NvimTreeToggle<CR>", "explorer" },
  ["<Leader>f"] = {
    name = "+file",
    s = { "<Cmd>write!<CR>", "Save" },
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
      a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
      d = {
        "<cmd>Telescope diagnostics<cr>",
        "Document Diagnostics",
      },
      -- w = {
      --   "<cmd>Telescope lsp_workspace_diagnostics<cr>",
      --   "Workspace Diagnostics",
      -- },
      -- f = { "<cmd>lua vim.lsp.buf.format{async=true}<cr>", "Format" },
      i = { "<cmd>LspInfo<cr>", "Info" },
      I = { "<cmd>Mason<cr>", "Installer Info" },
      j = {
        "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
        "Next Diagnostic",
      },
      k = {
        "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
        "Prev Diagnostic",
      },
      -- l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
      q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
      r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
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
}

wk.setup(setup)
wk.register(mappings, opts)
