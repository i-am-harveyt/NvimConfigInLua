local packer_status, pk = pcall(require, "packer")

if not packer_status then
  return
end

-- treesitter
pk.use({
  'nvim-treesitter/nvim-treesitter',
  run = function ()
    require('nvim-treesitter.install').update(
      { with_sync = true }
    )
  end
})


require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  auto_install = true,

  -- List of parsers to ignore installing (for "all")
  ignore_install = {"phpdoc"},

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
