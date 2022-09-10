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

