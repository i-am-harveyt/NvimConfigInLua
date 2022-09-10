local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use({
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
})

local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

nvim_tree.setup({
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  view = {
      mappings = {
          list = {
              { key = "c", action = "cd" },
              { key = "N", action = "create" },
              { key = "u", action = "dir_up" },
              { key = "t", action = "tabnew" },
              { key = "?", action = "toggle_help" },
          },
      }
  },
  git = {
      enable = true,
      ignore = true,
      show_on_dirs = true,
      timeout = 400,
  },
  renderer = {
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  diagnostics = {
    enable = true,
    show_on_dirs = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
})

local wk_status, wk = pcall(require, "which-key")
if not wk_status then
    return
end
wk.register({
  e = { "<Cmd>NvimTreeToggle<CR>", "explorer" },
  T = {
      name = "+NvimTree",
      r = { "<Cmd>NvimTreeRefresh<CR>", "refresh" },
      t = { "<Cmd>NvimTreeToggle<CR>", "toggle" },
  },
}, {prefix = "<Leader>"})
