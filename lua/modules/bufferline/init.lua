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
