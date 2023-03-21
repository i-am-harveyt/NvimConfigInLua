local ok, alpha = pcall(require, "alpha")
if not ok then
	print("Alpha not installed")
	return
end

local db = require("alpha.themes.dashboard")
alpha.setup(db.opts)

local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("Which-key not installed")
	return
end
wk.register({
  D = { "<Cmd>Alpha<CR>", "Dashboard" }
}, { prefix = "<Space>" })


