local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use ({ "numToStr/Comment.nvim" })

require("Comment").setup({
  toggler = {
    line = "<leader>/"
  },
})
