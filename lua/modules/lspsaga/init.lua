local saga_ok, saga = pcall(require, "lspsaga")
if not saga_ok then
  return
end

saga.setup({
  border_style = "rounded",
  saga_winblend = 0,
  move_in_saga = { prev = '<C-p>',next = '<C-n>'},
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  max_preview_lines = 10,
  code_action_icon = "💡",
  code_action_num_shortcut = true,
  code_action_lightbulb = {
      enable = true,
      enable_in_insert = true,
      cache_code_action = true,
      sign = true,
      update_time = 150,
      sign_priority = 20,
      virtual_text = true,
  },
  finder_icons = {
    def = '  ',
    ref = '諭 ',
    link = '  ',
  },
  finder_request_timeout = 1500,
  finder_action_keys = {
      open = "o",
      vsplit = "s",
      split = "i",
      tabe = "t",
      quit = "q",
  },
  code_action_keys = {
      quit = "q",
      exec = "<CR>",
  },
  definition_action_keys = {
    edit = '<C-c>o',
    vsplit = '<C-c>v',
    split = '<C-c>i',
    tabe = '<C-c>t',
    quit = 'q',
  },
  rename_action_quit = "<C-c>",
  rename_in_select = true,
  symbol_in_winbar = {
      in_custom = false,
      enable = false,
      separator = ' ',
      show_file = true,
      click_support = false,
  },
  show_outline = {
    win_position = 'right',
    win_with = '',
    win_width = 30,
    auto_enter = true,
    auto_preview = true,
    virt_text = '┃',
    jump_key = 'o',
    auto_refresh = true,
  },
  custom_kind = {},
  server_filetype_map = {},
})

local ok, wk = pcall(require, "which-key")
if not ok then
  return
end

wk.register({
  ['h'] = { "<Cmd>Lspsaga hover_doc<CR>", "hover" },
  ['c'] = {
    name = "code",
    ['a'] = { "<Cmd>Lspsaga code_action<CR>", "action" },
    ['h'] = { "<Cmd>Lspsaga hover_doc<CR>", "hover" },
    ['d'] = { "<Cmd>Lspsaga peek_definition<CR>", "definition" },
    ['r'] = { "<Cmd>Lspsaga rename<CR>", "rename" },
    ['f'] = { "<Cmd>Lspsaga lsp_finder<CR>", "find" },
    ['j'] = { "<Cmd>Lspsaga diagnostic_jump_next<CR>", "next_diagnostics" },
    ['k'] = { "<Cmd>Lspsaga diagnostic_jump_prev<CR>", "prev_diagnostics" },
  },
  ['d'] = {
    name = "diagnostics",
    ['c'] = { "<Cmd>Lspsaga show_cursor_diagnostics<Cr>", "cursor" },
    ['l'] = { "<Cmd>Lspsaga show_line_diagnostics<Cr>", "line" },
  }
}, { prefix = "<Leader>"})
