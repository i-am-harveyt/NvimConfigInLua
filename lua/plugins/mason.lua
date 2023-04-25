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

local ok, wk = pcall(require, "which-key")
if ok then
	wk.register({
		l = {
			name = "+LSP",
			a = { "<cmd>lua vim.lsp.buf.code_action()<cr>", "Code Action" },
			d = { "<Cmd>lua vim.lsp.buf.definition()<CR>", "Definition" },
			f = { "<Cmd>lua vim.lsp.buf.format { async = true }<CR>", "Format" },
			D = {
				"<cmd>Telescope diagnostics<cr>",
				"Document Diagnostics",
			},
			w = {
				"<cmd>Telescope lsp_workspace_diagnostics<cr>",
				"Workspace Diagnostics",
			},
			h = { "<Cmd>lua vim.lsp.buf.hover()<CR>", "hover" },
			i = { "<cmd>LspInfo<cr>", "Info" },
			I = { "<cmd>Mason<cr>", "Installer Info" },
			j = {
				"<cmd>lua vim.lsp.diagnostic.goto_next()<CR>",
				"Next Diagnostic",
			},
			k = {
				"<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>",
				"Prev Diagnostic",
			},
			l = { "<cmd>lua vim.lsp.codelens.run()<cr>", "CodeLens Action" },
			q = { "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", "Quickfix" },
			r = { "<cmd>lua vim.lsp.buf.rename()<cr>", "Rename" },
		},
	}, { prefix = "<Space>" })
end

return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	config = config,
}
