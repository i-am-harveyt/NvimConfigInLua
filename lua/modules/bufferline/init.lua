local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use ({
  'akinsho/bufferline.nvim',
  tag = "v2.*",
  requires = 'kyazdani42/nvim-web-devicons'
})

vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        numbers = "ordinal",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        middle_mouse_command = nil,
        color_icons = true,
        diagnostics = "nvim_lsp"
    }
})
