local ok, nvt = pcall(require, "nvim-tree")
if not ok then
  print("Nvim-Tree not installed")
  return
end
nvt.setup({
	update_focused_file = {
		enable = true,
	},
	view = {
		mappings = {
			list = {
				{ key = 'c', action = "cd" },
				{ key = 'N', action = "create" },
				{ key = 'u', action = "dir_up" },
				{ key = 't', action = "tabnew" },
				{ key = '?', action = "toggle_help" },
			}
		}
	},
	git = {
		enable = true,
		show_on_dirs = true,
		timeout = 200,
	},
	diagnostics = {
		enable = true,
		show_on_dirs = true,
	}
})

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
	return
end
wk.register({
  e = {"<Cmd>NvimTreeToggle<CR>", "Explorer"},
  T = {
    name = "+NvimTree",
    t = {"<Cmd>NvimTreeToggle<CR>", "Toggle"},
    r = {"<Cmd>NvimTreeRefresh<CR>", "Refresh"},
  }
}, { prefix = "<Space>" })


