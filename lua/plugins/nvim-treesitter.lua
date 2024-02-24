local config = function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = {
			"lua",
		},
		sync_install = true,
		auto_install = true,
		incremental_selection = { enable = true },
		indent = { enable = true },
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	event = "BufRead",
	config = config,
}
