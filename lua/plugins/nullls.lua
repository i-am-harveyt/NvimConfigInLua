local ok, nl = pcall(require, "null-ls")
if not ok then
	print("Null LS not installed")
	return
end

local fmt = nl.builtins.formatting

local sources = {
	fmt.prettier,
	fmt.autopep8,
	fmt.stylua,
}

nl.setup({
	sources = sources,
})
