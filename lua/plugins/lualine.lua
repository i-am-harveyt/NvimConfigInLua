local ok, ll = pcall(require, "lualine")
if not ok then
	print("Lualine not installed")
	return
end

ll.setup({
	options = {
		icons_enabled = true,
		theme = "onedark",
		section_separators = { left = "", right = "" },
		component_separators = { left = "", right = "" },
	},
})
