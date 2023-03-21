local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
	print("Treesitter not installed")
	return
end

ts.setup {
	highlight = {
		enable = true,
	},
}
