local ok, nvt = pcall(require, "nvim-tree")
if not ok then
  print("Nvim-Tree not installed")
  return
end


local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
	return packer
end
wk.register({
  e = {"<Cmd>NvimTreeToggle<CR>", "Explorer"},
  T = {
    name = "+NvimTree",
    t = {"<Cmd>NvimTreeToggle<CR>", "Toggle"},
    r = {"<Cmd>NvimTreeRefresh<CR>", "Refresh"},
  }
}, { prefix = "<Space>" })


nvt.setup()
