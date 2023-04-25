local config = function()
	local nl = require('null-ls')
	local fmt = nl.builtins.formatting
	local sources = {
		fmt.prettier,
		fmt.autopep8,
		fmt.stylua,
	}
	nl.setup({ sources = sources, })
end

return {
	'jose-elias-alvarez/null-ls.nvim',
	config = config
}
