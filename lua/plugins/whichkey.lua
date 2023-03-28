local ok, wk = pcall(require, "which-key")
if not ok then
	print("Which-Key not installed")
	return
end

wk.setup({
	layout = {
		height = { min = 4, max = 25 },
		width = { min = 20, max = 50 },
		spacing = 3,
		align = "left",
	},
})

-- for basic keybindings setup
wk.register({
	Q = { "<Cmd>q!<CR>", "Quit" },
	b = {
		name = "+buffer",
		n = { "<Cmd>bn<CR>", "Next" },
		p = { "<Cmd>bp<CR>", "Previous" },
		d = { "<Cmd>bd<CR>", "Delete" },
		l = { "<Cmd>buffers<CR>", "List All" },
	},
	f = {
		name = "+file",
		s = { "<Cmd>w<CR>", "Save" },
	},
	w = {
		name = "+window",
		s = {
			name = "+split",
			h = { "<Cmd>split<CR>", "horizontally" },
			v = { "<Cmd>vsplit<CR>", "vertically" },
		},
		h = { "<C-w>h", "Move left" },
		j = { "<C-w>j", "Move down" },
		k = { "<C-w>k", "Move up" },
		l = { "<C-w>l", "Move right" },
	},
}, { prefix = "<Space>" })
