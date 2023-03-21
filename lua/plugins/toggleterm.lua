local tt_ok, tt = pcall(require, "toggleterm")
if not tt_ok then
  return
end

tt.setup({})

-- work with which-key
local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
  return
end
wk.register({
  t = {
    name = "ToggleTerminal",
    h = {
      "<Cmd>ToggleTerm size=9 direction=horizontal<CR>",
      "horizontally"
    },
    f = {
      "<Cmd>ToggleTerm size=5 direction=float<CR>",
      "float"
    },
  }
}, { prefix = "<Space>" })
