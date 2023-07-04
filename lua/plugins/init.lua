return {
	-- alpha
	"goolord/alpha-nvim",
	-- mason & LSPs
	"williamboman/mason.nvim",
	-- auto complete
	"hrsh7th/nvim-cmp",
	-- treesitter
	"nvim-treesitter/nvim-treesitter",
	-- gitsigns
	"lewis6991/gitsigns.nvim",
	-- toggle term
	"akinsho/toggleterm.nvim",
	-- telescope
	"nvim-telescope/telescope.nvim",
	-- which-key
	"folke/which-key.nvim",
	-- null-ls
	"jose-elias-alvarez/null-ls.nvim",
	-- auto-pair
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
	-- comment
	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},
	-- diagnostics
	"folke/trouble.nvim",

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
	-- notify
	{
		"rcarriga/nvim-notify",
		lazy = false,
		config = function()
			vim.notify = require("notify")
		end,
	},
	-- lspsaga
	"glepnir/lspsaga.nvim",
	-- indent line
	"lukas-reineke/indent-blankline.nvim",
	-- colorizer
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup()
		end,
	},
}
