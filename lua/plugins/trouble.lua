local ok, t = pcall(require, "trouble")
if not ok then
	print("Trouble not installed")
	return
end
t.setup({
	position = "bottom",
	height = 10,
	icons = true,
	mode = "workspace_diagnostics",
	auto_open = false,
	auto_close = true,
})

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-Key not installed")
	return
end
wk.register({
	d = {
		name = "+Diagnostics",
		...,
		w = { "<Cmd>Trouble workspace_diagnostics<CR>", "workspace" },
		d = { "<Cmd>Trouble document_diagnostics<CR>", "document" },
		q = { "<Cmd>Trouble quickfix<CR>", "quickfix" },
		t = { "<Cmd>TroubleToggle<CR>", "toggle" },
	},
}, { prefix = "<Space>" })
