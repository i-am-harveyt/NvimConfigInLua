local pk_status, pk = pcall(require, "packer")
if not pk_status then
  return
end

pk.use({
  'iamcco/markdown-preview.nvim',
  run = function () vim.fn["mkdp#util#install"]() end,
  setup = function() vim.gmkdp_filetypes = { "markdown" } end,
  ft = { " markdown" },
})


local mdp_status, mdp = pcall(require, "markdown-preview")

if not mdp_status then
  return
end

mdp.setup({
  function() vim.gmkdp_filetypes = { "markdown" } end
})
