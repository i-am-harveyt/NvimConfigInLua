local mdp_status, mdp = pcall(require, "markdown-preview")

if not mdp_status then
  return
end

mdp.setup({
  function() vim.gmkdp_filetypes = { "markdown" } end
})
