local ok, saga = pcall(require, "lspsaga")
if not ok then
	print("Lspsaga not installed")
	return
end

saga.setup({})

local ok_wk, wk = pcall(require, "which-key")
if not ok_wk then
	return
end

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
	},
	["d"] = {
		...,
		["c"] = { "<Cmd>Lspsaga show_cursor_diagnostics<Cr>", "cursor" },
		["l"] = { "<Cmd>Lspsaga show_line_diagnostics<Cr>", "line" },
	},
}, { prefix = "<Space>" })
