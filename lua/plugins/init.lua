return {
	-- mason & LSPs
	"williamboman/mason.nvim",
	-- auto complete
	"hrsh7th/nvim-cmp",
	-- treesitter
	"nvim-treesitter/nvim-treesitter",
	-- gitsigns
	"lewis6991/gitsigns.nvim",
	-- telescope
	"nvim-telescope/telescope.nvim",
	-- null-ls
	"jose-elias-alvarez/null-ls.nvim",
	-- auto-pair
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		event = "BufRead",
		config = function()
			require("Comment").setup()
		end,
	},
	-- diagnostics
	"folke/trouble.nvim",
	-- Markdown preview
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		config = function()
			vim.fn["mkdp#util#install"]()
		end,
	},
	-- {
	-- 	"m4xshen/hardtime.nvim",
	-- 	opts = {}
	-- },

	-- UI --
	-- nvimtree
	"nvim-tree/nvim-tree.lua",
	-- colorscheme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme tokyonight-moon]])
		end,
	},
	-- statusline
	"nvim-lualine/lualine.nvim",
	-- bufferline
	"akinsho/bufferline.nvim",

	-- noice.nvim
	"folke/noice.nvim",

	-- lspsaga
	"glepnir/lspsaga.nvim",
	-- indent line
	"lukas-reineke/indent-blankline.nvim",
	-- colorizer
	{
		"norcalli/nvim-colorizer.lua",
		event = "BufRead",
		config = function()
			require("colorizer").setup()
		end,
	},
	-- hop
	{
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			local hop = require('hop')
			hop.setup { keys = '0123456789' }
			local directions = require('hop.hint').HintDirection
			vim.keymap.set('', 'f', function()
				hop.hint_char1(
					{
						direction = directions.AFTER_CURSOR,
						current_line_only = false
					})
			end, { remap = true })
			vim.keymap.set('', 'F', function()
				hop.hint_char1(
					{
						direction = directions.BEFORE_CURSOR,
						current_line_only = false
					})
			end, { remap = true })
			vim.keymap.set('', 't', function()
				hop.hint_char1(
					{
						direction = directions.AFTER_CURSOR,
						current_line_only = false,
						hint_offset = -1
					})
			end, { remap = true })
			vim.keymap.set('', 'T', function()
				hop.hint_char1(
					{
						direction = directions.BEFORE_CURSOR,
						current_line_only = false,
						hint_offset = 1
					})
			end, { remap = true })
		end
	}
}
