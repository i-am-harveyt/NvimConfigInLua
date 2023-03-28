local ok, ts = pcall(require, "telescope")
if not ok then
	print("Telescope not installed")
	return
end

ts.setup()

--which key
local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
	return
end
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
