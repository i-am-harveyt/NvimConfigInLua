vim.cmd[[packadd packer.nvim]]

local packer = require('packer')

packer.startup(function(use)
    -- let packer maintain itself
    use 'wbthomason/packer.nvim'

    -- bufferline
    use {
        'akinsho/bufferline.nvim',
        tag = "v2.*",
        requires = 'kyazdani42/nvim-web-devicons'
    }

    -- colorscheme
    use { "EdenEast/nightfox.nvim" }

    -- Configurations for Nvim LSP
    use { 'neovim/nvim-lspconfig' }

    -- Dashboard
    use { 'glepnir/dashboard-nvim' }

    -- lualine
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- mason.nvim, for make lsp easier
    use { "williamboman/mason.nvim" }
    use { "williamboman/mason-lspconfig.nvim" }

   -- nvim-tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
    }

    -- plenary
    use { "nvim-lua/plenary.nvim" }

    -- telescope-fzf
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }

    -- Which Key
    use {
      "folke/which-key.nvim",
      config = function()
          require("which-key").setup {}
      end
    }

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

    -- autopair
    use {
      'windwp/nvim-autopairs',
      config = function ()
        require("nvim-autopairs").setup {}
      end
  }

end)

return packer


