local config = function ()
	require('nvim-treesitter.configs').setup({
		sync_install = true,
		auto_install = true,
		highlight = { enable = true, },
		incremental_selection = { enable = true },
		indent = { enable = true },
		audotag = { enable = true },
})
end

return {
	'nvim-treesitter/nvim-treesitter',
	config = config,
}
