return {
	-- my self-written
	-- { dir = "/Users/tonghaoting/.config/nvim/lua/plugins/power.nvim" },
	--end

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
	-- which-key
	"folke/which-key.nvim",
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
		end
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
	-- notify
	"rcarriga/nvim-notify",
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
	{
		'glacambre/firenvim',
		lazy = not vim.g.started_by_firenvim,
		module = false,
		build = function()
			vim.fn["firenvim#install"](0)
		end,
	},

}
