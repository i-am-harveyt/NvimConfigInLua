vim.keymap.set(
	"n", "<C-s>", ":w!<cr>",
	{ desc = "Write File", silent = true }
)
vim.keymap.set(
	"i", "<C-l>", "<ESC>",
	{ desc = "ESC", silent = true }
)
vim.keymap.set(
	"n", "<C-b>d", ":bd<cr>",
	{ desc = "Delete Buffer", silent = true }
)
vim.keymap.set(
	"n", "<C-b>n", ":bn<cr>",
	{ desc = "Next Buffer", silent = true }
)
vim.keymap.set(
	"n", "<C-b>p", ":bp<cr>",
	{ desc = "Previous Buffer", silent = true }
)
