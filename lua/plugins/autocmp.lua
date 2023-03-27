local ok, cmp = pcall(require, "cmp")
if not ok then
	print("Nvim-cmp not installed")
	return
end
local ls_ok, ls = pcall(require, "luasnip")
if not ls_ok then
	print("Luasnip not installed")
	return
end
require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	snippet = {
		expand = function(args)
			ls.lsp_expand(args.body)
		end
	},
	mapping = cmp.mapping.preset.insert({
		['<C-u>'] = cmp.mapping.scroll_docs(-1),
		['<C-d>'] = cmp.mapping.scroll_docs(1),
		["<C-CR>"] = cmp.mapping.complete(),
		['<C-k>'] = cmp.mapping.select_prev_item(),
		['<C-j>'] = cmp.mapping.select_next_item(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		-- Super Tab
		["<Tab>"] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				elseif ls.expandable() then
					ls.expand()
				elseif ls.expand_or_jumpable() then
					ls.expand_or_jump()
				else
					fallback()
				end
			end, { "i", "s", }),
		["<S-Tab>"] = cmp.mapping(
			function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				elseif ls.jumpable(-1) then
					ls.jump(-1)
				else
					fallback()
				end
			end, { "i", "s", }),
	}),
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	})
})
