vim.cmd[[packadd packer.nvim]]

local packer = require('packer')

packer.startup(function(use)

  -- let packer maintain itself
  use 'wbthomason/packer.nvim'

  -- plenary
  use { "nvim-lua/plenary.nvim" }

  -- popup
  use { 'nvim-lua/popup.nvim' }

  -- autopair
  use {
    'windwp/nvim-autopairs',
    config = function ()
      require("nvim-autopairs").setup {}
    end
  }

  use({ "goolord/alpha-nvim" })

  -- lspconfig
  use({ 'neovim/nvim-lspconfig' })
  -- autocomplete
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'hrsh7th/nvim-cmp' }
  -- Luasnip
  use { 'L3MON4D3/LuaSnip' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'rafamadriz/friendly-snippets' }

  use ({
    'akinsho/bufferline.nvim',
    tag = "v2.*",
    requires = 'kyazdani42/nvim-web-devicons'
  })

  use ({ "EdenEast/nightfox.nvim" })

  use ({ "numToStr/Comment.nvim" })

  use ({ 'kyazdani42/nvim-web-devicons' })

  use ({ 'lewis6991/gitsigns.nvim' })

  -- impatient, to make loading faster
  use({ 'lewis6991/impatient.nvim' })

  use({
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  })

  use ({ "williamboman/mason.nvim" })
  use ({ "williamboman/mason-lspconfig.nvim" })

  use({
    'iamcco/markdown-preview.nvim',
    run = function () vim.fn["mkdp#util#install"]() end,
    setup = function() vim.gmkdp_filetypes = { "markdown" } end,
    ft = { " markdown" },
  })

  use({
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  })

  use({ "nvim-telescope/telescope.nvim" })

  use({
    "akinsho/toggleterm.nvim",
    tag = 'v2.*',
  })

  -- trouble
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
  })
  -- treesitter
  use({
    'nvim-treesitter/nvim-treesitter',
    run = function ()
      require('nvim-treesitter.install').update(
        { with_sync = true }
      )
    end
  })

  -- Which Key
  use({
    "folke/which-key.nvim",
    config = function()
        require("which-key").setup {}
    end
  })

end)

local wk_status, wk = pcall(require, "which-key")
if not wk_status then
    return packer
end
wk.register({
  P = {
      name = "+Packer",
      S = { "<Cmd>PackerSync<CR>", "Sync" },
      s = { "<Cmd>PackerStatus<CR>", "Status" },
      u = { "<Cmd>PackerUpdate<CR>", "Update" },
      c = { "<Cmd>PackerClean<CR>", "Clean" },
  },
}, { prefix = "<Leader>" })

return packer

