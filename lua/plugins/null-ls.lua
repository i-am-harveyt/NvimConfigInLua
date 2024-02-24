local config = function()
	local nl = require('null-ls')
	local dgn = nl.builtins.diagnostics
	local fmt = nl.builtins.formatting
	local sources = {
		dgn.pylint,
		fmt.black,
		fmt.isort,
		fmt.prettier,
		fmt.sqlfluff,
		fmt.stylua,
		fmt.goimports,
		fmt.gofumpt,
	}
	nl.setup({ sources = sources, })
end

return {
	'jose-elias-alvarez/null-ls.nvim',
	event = "InsertEnter",
	config = config
}
