local config = function ()
	require('indent_blankline').setup {
		char = "│",
		show_current_context = true,
		show_current_context_strat = true,
	}
end


return {
	"lukas-reineke/indent-blankline.nvim",
	config = config,
}
