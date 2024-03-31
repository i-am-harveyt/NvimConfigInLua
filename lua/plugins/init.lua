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
	-- {
	-- 	"catppuccin/nvim",
	-- 	lazy = false,
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	config = function()
	-- 		require("catppuccin").setup({
	-- 			flavour = "macchiato", -- latte, frappe, macchiato, mocha
	-- 			background = { -- :h background
	-- 				light = "latte",
	-- 				dark = "mocha",
	-- 			},
	-- 			transparent_background = false, -- disables setting the background color.
	-- 			show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
	-- 			term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
	-- 			dim_inactive = {
	-- 				enabled = false, -- dims the background color of inactive window
	-- 				shade = "dark",
	-- 				percentage = 0.15, -- percentage of the shade to apply to the inactive window
	-- 			},
	-- 			no_italic = false, -- Force no italic
	-- 			no_bold = false, -- Force no bold
	-- 			no_underline = false, -- Force no underline
	-- 			styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
	-- 				comments = { "italic" }, -- Change the style of comments
	-- 				conditionals = { "italic" },
	-- 				loops = {},
	-- 				functions = {},
	-- 				keywords = { "bold", "italic" },
	-- 				strings = { "italic" },
	-- 				variables = {},
	-- 				numbers = { "bold" },
	-- 				booleans = { "bold" },
	-- 				properties = {},
	-- 				types = {},
	-- 				operators = {},
	-- 			},
	-- 			color_overrides = {},
	-- 			custom_highlights = {},
	-- 			integrations = {
	-- 				cmp = true,
	-- 				gitsigns = true,
	-- 				nvimtree = true,
	-- 				treesitter = true,
	-- 				notify = false,
	-- 				mini = {
	-- 					enabled = true,
	-- 					indentscope_color = "",
	-- 				},
	-- 			},
	-- 		})
	--
	-- 		-- setup must be called before loading
	-- 		vim.cmd.colorscheme "catppuccin"
	-- 	end,
	-- },
	-- statusline
	"nvim-lualine/lualine.nvim",
	-- bufferline
	"akinsho/bufferline.nvim",

	-- noice.nvim
	-- "folke/noice.nvim",

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
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			local hop = require("hop")
			hop.setup({ keys = "0123456789" })
			local directions = require("hop.hint").HintDirection
			vim.keymap.set("", "f", function()
				hop.hint_char1({
					direction = directions.AFTER_CURSOR,
					current_line_only = true,
				})
			end, { remap = true })
			vim.keymap.set("", "F", function()
				hop.hint_char1({
					direction = directions.BEFORE_CURSOR,
					current_line_only = true,
				})
			end, { remap = true })
			vim.keymap.set("", "t", function()
				hop.hint_char1({
					direction = directions.AFTER_CURSOR,
					current_line_only = true,
					hint_offset = -1,
				})
			end, { remap = true })
			vim.keymap.set("", "T", function()
				hop.hint_char1({
					direction = directions.BEFORE_CURSOR,
					current_line_only = true,
					hint_offset = 1,
				})
			end, { remap = true })
		end,
	},
}
