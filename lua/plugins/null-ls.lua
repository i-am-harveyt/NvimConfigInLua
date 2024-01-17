local config = function()
	local nl = require('null-ls')
	-- local dgn = nl.builtins.diagnostics
	local fmt = nl.builtins.formatting
	local sources = {
		fmt.prettier,
		fmt.autopep8,
		fmt.stylua,
		fmt.sqlfluff,
	}
	nl.setup({ sources = sources, })
end

return {
	'jose-elias-alvarez/null-ls.nvim',
	event = "InsertEnter",
	config = config
}
