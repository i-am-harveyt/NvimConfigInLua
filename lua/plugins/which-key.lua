local config = function()
	vim.opt.timeout = true
	vim.opt.timeoutlen = 300
	local wk = require('which-key')
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
			},
			f = {
				name = "+file",
				s = { "<Cmd>w<CR>", "Save" },
				S = { "<Cmd>lua vim.lsp.buf.format{aync=true}<CR><Cmd>w<CR>", "Format & Save" },
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
		},
		{ prefix = "<Space>" })
end

return {
	"folke/which-key.nvim",
	config = config
}
