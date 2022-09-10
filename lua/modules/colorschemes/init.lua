local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use ({ "EdenEast/nightfox.nvim" })

vim.cmd("colorscheme nightfox")
