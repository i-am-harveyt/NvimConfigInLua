local ok, bfl = pcall(require, "bufferline")
if not ok then
  print("Bufferline not installed")
  return
end

bfl.setup{
	options = {
		separator_style ="thick",
		indicator = "icon",
		numbers = "ordinal",
		color_icons = true,
		diagnostics = "nvim_lsp",
		show_buffer_icons = true,
		always_show_bufferline = true,
	}
}

