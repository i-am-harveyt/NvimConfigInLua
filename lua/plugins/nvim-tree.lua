-- Set keymaps
local function on_attach(bufnr)
	local api = require("nvim-tree.api")

	local function opts(desc)
		return {
			desc = "nvim-tree: " .. desc,
			buffer = bufnr,
			noremap = true,
			silent = true,
			nowait = true,
		}
	end

	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set("n", "c", api.tree.change_root_to_node, opts("CD"))  -- change dir
	vim.keymap.set("n", "N", api.fs.create, opts("create"))             -- create
	vim.keymap.set("n", "u", api.tree.change_root_to_parent, opts("Up")) -- up
	vim.keymap.set("n", "?", api.tree.toggle_help, opts("Help"))        -- help
end

local config = function()
	local nt = require("nvim-tree")
	nt.setup({
		on_attach = on_attach,
		update_focused_file = {
			enable = true,
		},
		git = {
			enable = true,
			show_on_dirs = true,
			timeout = 200,
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
		},
		view = {
			side = "right",
			-- number = true,
			-- relativenumber = true,
			-- float = { enable = true }
		}
	})
end

return {
	"nvim-tree/nvim-tree.lua",
	keys = {
		{
			"<Space>e",
			"<Cmd>NvimTreeToggle<CR>",
			desc = "File Tree",
		},
	},
	config = config,
}
