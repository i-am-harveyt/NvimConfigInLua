local ok, wk = pcall(require, "which-key")

if not ok then
  return
end

wk.register({
  ['c'] = {
    name = "code",
    ['a'] = { "<Cmd>Lspsaga code_action<CR>", "action" },
    ['h'] = { "<Cmd>Lspsaga hover_doc<CR>", "hover" },
    ['d'] = { "<Cmd>Lspsaga peek_definition<CR>", "definition" },
    ['r'] = { "<Cmd>Lspsaga rename<CR>", "rename" },
    ['f'] = { "<Cmd>Lspsaga lsp_finder<CR>", "find" }
  },
  ['d'] = {
    name = "diagnostics",
    ['c'] = { "<Cmd>Lspsaga show_cursor_diagnostics<Cr>", "cursor" },
    ['l'] = { "<Cmd>Lspsaga show_line_diagnostics<Cr>", "line" },
  }
}, { prefix = "<Leader>"})
