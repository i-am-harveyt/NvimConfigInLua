require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp", "lua"},

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
