local config = function()
	require("lspsaga").setup({
		ui = {
			code_action=""
		}
	})
end

vim.keymap.set(
	"n", "<C-h>", ":Lspsaga hover_doc<CR>",
	{
		desc = "Hover",
		silent = true,
	}
)
vim.keymap.set(
	"n", "gn", ":Lspsaga diagnostic_jump_next<CR>",
	{
		desc = "Next Diagnostic",
		silent = true,
	}
)
vim.keymap.set(
	"n", "gp", ":Lspsaga diagnostic_jump_prev<CR>",
	{
		desc = "Previous Diagnostic",
		silent = true,
	}
)
vim.keymap.set(
	"n", "<C-l>p", ":Lspsaga peek_definition<CR>",
	{
		desc = "Peek Definition",
		silent = true,
	}
)
vim.keymap.set(
	"n", "<C-l>r", ":Lspsaga rename<CR>",
	{
		desc = "Rename Symbol",
		silent = true,
	}
)

return {
	"glepnir/lspsaga.nvim",
	event = "LspAttach",
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = config
}
