local ok, packer = pcall(require, 'packer')

if not ok then
	print("Packer Not Installed")
	return
end

packer.startup(
	function(use)
		-- packer manage itself
		use { 'wbthomason/packer.nvim' }
		-- alpha
		use { 'goolord/alpha-nvim' }
		-- mason and lsp
		use {
			'williamboman/mason.nvim',
			requires = {
				'williamboman/mason-lspconfig.nvim',
				'neovim/nvim-lspconfig'
			}
		}
		-- treesitter
		use { 'nvim-treesitter/nvim-treesitter' }
		-- gitsigns
		use { 'lewis6991/gitsigns.nvim' }
		-- which key
		use { 'folke/which-key.nvim' }
		-- auto-complete
		use {
			'hrsh7th/nvim-cmp',
			requires = {
				'hrsh7th/cmp-nvim-lsp',
				'L3MON4D3/LuaSnip',
				'saadparwaiz1/cmp_luasnip',
				'rafamadriz/friendly-snippets',
			}
		}
		-- toggleterm
		use { 'akinsho/toggleterm.nvim' }
		-- telescope
		use {
			'nvim-telescope/telescope.nvim',
			requires = {
				'nvim-lua/plenary.nvim'
			}
		}

		-- ui
		-- colorscheme
		use { "rebelot/kanagawa.nvim" }
		-- lspsaga
		use {
			'glepnir/lspsaga.nvim',
			requires = {
				'nvim-tree/nvim-web-devicons'
			},
			branch = 'main'
		}
		-- statusline
		use {
			"nvim-lualine/lualine.nvim",
			requires = {
				'nvim-tree/nvim-web-devicons',
				opt = true
			}
		}
		-- bufferline
		use { 'akinsho/bufferline.nvim' }
		-- nvimtree
		use { 'nvim-tree/nvim-tree.lua' }
		-- trouble
		use({
			"folke/trouble.nvim",
			requires = {
				'nvim-tree/nvim-web-devicons',
			}
		})
	end)

-- require
require("plugins/alpha")
require("plugins/autocmp")
require("plugins/bufferline")
require("plugins/colorscheme")
require("plugins/devicons")
require("plugins/lsp")
require("plugins/lspsaga")
require("plugins/lualine")
require("plugins/nvimtree")
require("plugins/telescope")
require("plugins/toggleterm")
require("plugins/treesitter")
require("plugins/trouble")
require("plugins/whichkey")

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
	return packer
end
wk.register({
	P = {
		name = "+Packer",
		S = { "<Cmd>PackerSync<CR>", "Sync" },
		s = { "<Cmd>PackerStatus<CR>", "Status" },
	}
}, { prefix = "<Space>" })

return packer
