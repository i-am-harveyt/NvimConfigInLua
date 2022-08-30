local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end
local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
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

