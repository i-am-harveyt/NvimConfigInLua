local ok, wdi = pcall(require, "nvim-web-devicons")
if not ok then
	print("Nvim Web-devicons not installed")
	return
end

wdi.setup({
	color_icons = true,
	default = true,
})
