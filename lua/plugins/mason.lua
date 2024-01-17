local config = function()
	local mason = require("mason")
	mason.setup()
	local mason_config = require("mason-lspconfig")
	local lsp_config = require("lspconfig")

	-- cmp_nvim_lsp
	local cmp = require("cmp_nvim_lsp")
	local capabilities = cmp.default_capabilities()

	mason_config.setup_handlers({
		function(server_name)
			lsp_config[server_name].setup({
				capabilities = capabilities,
			})
		end,
	})
end

vim.keymap.set(
	"n", "<C-l>f", ":lua vim.lsp.buf.format {async=true}<CR>",
	{
		desc = "Format Code",
		silent = true,
	}
)


return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = config,
}
