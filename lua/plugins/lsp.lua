local ok_mason, mason = pcall(require, "mason")
if not ok_mason then
	print("No Mason")
	return
end
mason.setup()

local ok_mason_config, mason_config = pcall(require, "mason-lspconfig")
if not ok_mason_config then
	print("No Mason Lspconfig")
	return
end

local ok_lsp, lsp_config = pcall(require, "lspconfig")
if not ok_lsp then
	print("LSP config not setup yet")
	return
end

-- cmp_nvim_lsp is needed
local cmp_ok, cmp = pcall(require, "cmp_nvim_lsp")
if not cmp_ok then
	print("Nvim-cmp-lsp not installed")
	return
end
local capailities = cmp.default_capabilities()
mason_config.setup_handlers({
	function(server_name)
		lsp_config[server_name].setup({
			capailities = capailities,
		})
	end,
})

-- whick-key
local ok_wk, wk = pcall(require, "which-key")
if not ok_wk then
	print("Which-Key not installed")
	return
end
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
