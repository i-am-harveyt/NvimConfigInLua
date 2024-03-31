local config = function()
	require('lualine').setup({
		options = {
			icons_enabled = true,
			-- theme = "onedark",
			section_separators = { left = "", right = "" },
			component_separators = { left = "|", right = "|" },
		}
	})
end

return {
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = config,
	}
