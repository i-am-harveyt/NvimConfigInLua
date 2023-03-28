local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
	print("Treesitter not installed")
	return
end

ts.setup({
	sync_install = true,
	auto_install = true,
	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true,
	},
})
