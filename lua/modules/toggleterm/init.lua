local tt_status, tt = pcall(require, "toggleterm")
if not tt_status then
  return
end

tt.setup({})

-- work with which-key
local wk_status, wk = pcall(require, "which-key")
if not wk_status then
  return
end
wk.register({
  name = "ToggleTerminal",
  h = {
    "<Cmd>ToggleTerm size=7 direction=horizontal<CR>",
    "horizontally"
  },
  f = {
    "<Cmd>ToggleTerm size=5 direction=float<CR>",
    "float"
  },
}, { prefix = "<C-t>" })
