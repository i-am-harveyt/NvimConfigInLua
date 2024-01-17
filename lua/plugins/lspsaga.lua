local config = function()
	require("lspsaga").setup({
		ui = {
			code_action=""
		}
	})
end

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("")
else
	wk.register({
		["h"] = { "<Cmd>Lspsaga hover_doc<CR>", "hover" },
		["c"] = {
			name = "code",
			["a"] = { "<Cmd>Lspsaga code_action<CR>", "action" },
			["h"] = { "<Cmd>Lspsaga hover_doc<CR>", "hover" },
			["d"] = { "<Cmd>Lspsaga peek_definition<CR>", "definition" },
			["r"] = { "<Cmd>Lspsaga rename<CR>", "rename" },
			["f"] = { "<Cmd>Lspsaga lsp_finder<CR>", "find" },
			["j"] = { "<Cmd>Lspsaga diagnostic_jump_next<CR>", "next_diagnostics" },
			["k"] = { "<Cmd>Lspsaga diagnostic_jump_prev<CR>", "prev_diagnostics" },
			["i"] = { "<Cmd>Lspsaga finder imp<CR>", "implementation" },
		},
		["d"] = {
			name = "diagnostics",
			["c"] = { "<Cmd>Lspsaga show_cursor_diagnostics<Cr>", "cursor" },
			["l"] = { "<Cmd>Lspsaga show_line_diagnostics<Cr>", "line" },
		},
	}, { prefix = "<Space>" })
end


return {
	"glepnir/lspsaga.nvim",
	event = "LspAttach",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = config
}
