local config = function()
	local cmp_ok, cmp = pcall(require, "cmp")
	if not cmp_ok then
		print("CMP not ok")
		return
	end
	local ls_ok, ls = pcall(require, "luasnip")
	if not ls_ok then
		print("luasnip not ok")
		return
	end
	require("luasnip.loaders.from_vscode").lazy_load()

	cmp.setup({
		snippet = {
			expand = function(args)
				ls.lsp_expand(args.body)
			end,
		},
		mapping = cmp.mapping.preset.insert({
			["<C-u>"] = cmp.mapping.scroll_docs(-1),
			["<C-d>"] = cmp.mapping.scroll_docs(1),
			["<C-CR>"] = cmp.mapping.complete(),
			["<C-k>"] = cmp.mapping.select_prev_item(),
			["<C-j>"] = cmp.mapping.select_next_item(),
			["<C-e>"] = cmp.mapping.abort(),
			["<CR>"] = cmp.mapping.confirm({ select = true }),
			["<Tab>"] = cmp.mapping.confirm({ select = true }),
		}),
		sources = cmp.config.sources({
			{ name = "nvim_lsp" },
			{ name = "luasnip" },
		}, {
			{ name = "buffer" },
		}),
	})
end

return {
	{
		"hrsh7th/nvim-cmp",
		-- event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
		config = config,
	}, {
		"L3MON4D3/LuaSnip",
		version = "v2.*",
	}
}
