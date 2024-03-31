local sources = {}
local config = function()
	local nl = require("null-ls")
	local dgn = nl.builtins.diagnostics
	local fmt = nl.builtins.formatting
	nl.setup({
		sources = {
			dgn.pylint.with({
				method = nl.methods.DIAGNOSTICS_ON_SAVE,
				prefer_local = ".venv/bin",
			}),
			fmt.black,
			fmt.isort,
			fmt.prettier,
			fmt.sqlfmt,
			fmt.stylua,
			fmt.goimports,
			fmt.gofumpt,
		}
	})
end

return {
	"jose-elias-alvarez/null-ls.nvim",
	event = "InsertEnter",
	config = config,
}
