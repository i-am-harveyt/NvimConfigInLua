local config = function()
	require('bufferline').setup({
		options = {
			separator_style = "thick",
			indicator = "icon",
			numbers = "ordinal",
			color_icons = false,
			diagnostics = "nvim_lsp",
			show_buffer_icons = true,
			always_show_bufferline = true,
		},
})
end


return {
		"akinsho/bufferline.nvim",
		lazy = false,
		config =	config,
}
