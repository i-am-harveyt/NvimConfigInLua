local config = function()
	require('telescope').setup()
end

local wk = require('which-key')
wk.register({
["f"] = {
		name = "file",
		["f"] = {
			"<Cmd>Telescope find_files<CR>",
			"find",
		},
	},
	["F"] = {
		name = "Find",
		["f"] = {
			"<Cmd>Telescope find_files<CR>",
			"file",
		},
		["w"] = {
			"<Cmd>Telescope live_grep<CR>",
			"word",
		},
	},
}, { prefix = "<Space>" })

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {"nvim-lua/plenary.nvim"},
	config = config,
}
