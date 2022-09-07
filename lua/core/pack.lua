vim.cmd[[packadd packer.nvim]]

local packer = require('packer')

packer.startup(function(use)


    -- template
    -- use { 'TmpAccount/TmpRepo' }

    -- markdown-preview
    -- I've not tackle on config file yet, just use default opetions


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

    -- comment
    use { "numToStr/Comment.nvim" }

    -- Configurations for Nvim LSP
    use { 'neovim/nvim-lspconfig' }

    -- Alpha
    use { "goolord/alpha-nvim" }

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

    -- popup
    use { 'nvim-lua/popup.nvim' }

    -- telescope-fzf
    use { "nvim-telescope/telescope.nvim" }

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

    -- impatient, to make loading faster
    use { 'lewis6991/impatient.nvim' }

    -- gitsigns
    use { 'lewis6991/gitsigns.nvim' }

    -- treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function ()
            require('nvim-treesitter.install').update(
            { with_sync = true }
            )
        end
    }

    -- trouble
    use {
      "folke/trouble.nvim",
      requires = "kyazdani42/nvim-web-devicons",
    }

    --nvim-web-devicons
    use { 'kyazdani42/nvim-web-devicons' }

    -- toggle term
    use {
        "akinsho/toggleterm.nvim",
        tag = 'v2.*',
    }

    use {
      'iamcco/markdown-preview.nvim',
      run = function () vim.fn["mkdp#util#install"]() end,
      setup = function() vim.gmkdp_filetypes = { "markdown" } end,
      ft = { " markdown" },
    }

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

