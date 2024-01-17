local config = function()
	require("telescope").setup()
end

vim.keymap.set("n", "<C-f>w", ":Telescope live_grep", { desc = "Find Words", silent = true })
vim.keymap.set("n", "<C-f>f", ":Telescope find_files", { desc = "Find Files", silent = true })

return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
}
