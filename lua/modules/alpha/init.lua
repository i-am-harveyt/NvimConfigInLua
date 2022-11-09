local alpha_status, a = pcall(require, "alpha")
if not alpha_status then
  return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⡤⠤⠤⠤⠤⠤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡴⠚⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠲⢄⡀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡴⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣦⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⡠⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⣤⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⢸⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⡝⡅⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⣺⠀⠀⠀⢀⢀⡀⡀⠀⠀⢀⣀⡠⠤⠄⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡜⠀⢇⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠩⠍⠉⡇⠀⠀⠘⡉⡍⠁⠀⠀⠀⡄⠀⠀⠀⠀⠀⠀⠀⡾⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠈⡏⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠉⠙⡄⠀⢸⠀⡇⠀⠀⠀⠀⠀⠀⠀⠀⢘⡖⠒⠒⠁⠀⠀⠀⠑⠂⠤⠤⠔⠊⠀⠀⠀⠀⠀⠀⠀⢰⠃⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⢱⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢇⠀⠀⡇⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡄⢀⡤⡴⠦⢤⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠋⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠈⡆⠀⠀⡏⠉⠉⠉⠉⠉⠉⠉⣽⠀⠀⠸⠀⠀⢱⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣏⠀⠀⠀⠀⠀⠉⠢⡀⠀⠀⠀⠀⠀⠀⢀⠴⠁⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⢱⠀⠀⠇⠀⠀⠀⠀⠀⠀⠀⡇⡇⠀⠀⡇⠀⠘⡄⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⡏⠈⠳⣄⡀⠀⠀⠀⠀⠘⢆⠀⠀⣀⡤⠞⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠈⡇⢸⠀⠀⠀⠀⠀⠀⠀⢀⠃⢸⠀⠀⢸⠀⠀⢇⠸⡀⠀⠀⠀⠀⠀⠀⠀⢠⡇⠀⠀⠀⠙⠒⠶⠤⠤⠴⠞⢾⡝⠁⠀⠀⢸⣆⠀⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⢸⠸⠀⠀⠀⠀⠀⠀⠀⢸⠀⡆⠀⠀⠀⡆⠀⢸⠀⡇⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⡰⠛⣆⠀⠀⠀⢸⠸⡄⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⡸⢀⠇⠀⠀⠀⢱⠀⠀⡇⢸⠀⠀⠀⠀⠀⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⠸⡀⠀⠀⡼⠀⢳⠀⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⠀⡇⠀⠀⠀⠀⠀⠀⠀⡇⢸⣤⣤⣤⣤⣬⣦⣤⣡⠜⠀⠀⠀⠀⠀⠀⠀⠀⣇⠀⠀⠀⠀⠀⣠⠞⠁⠀⠀⠀⠀⢷⠀⢠⠇⠀⢸⡄⠀⠀⠀⠀⠀⠀]],
[[⠀⠀⠀⠀⠀⠀⢰⠀⠀⠀⠀⠀⠀⠀⠀⢇⣸⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⠤⡤⢄⣀⠀⠀⠀⢹⠄⠀⢀⡤⠞⠁⠀⠀⠀⠀⠀⠀⢸⡡⡝⠀⠀⠈⡇⠀⠀⠀⠀⠀⠀]],
[[⠒⠒⠒⠒⠒⡲⠊⠉⠉⠉⠉⠉⠉⠉⠉⢇⠀⠑⢤⡤⠤⠤⠤⠤⠤⠤⠤⠤⠧⠤⠤⠗⠒⠒⠚⠷⠚⠛⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠟⠒⠒⠒⠒⠓⣒⣒⠶⠶⠒⡆]],
[[⠀⠀⠀⠀⠚⠒⠒⠒⠒⠒⠒⠒⠒⠒⠒⠚⠒⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⠤⠤⠐⠒⠊⠉⠁⠀⠀⠀⠀⠀⡇]],
}
dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("p", "  Find project(TODO)", ":Telescope projects <CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", "  Configuration", ":e ~/.config/nvim/lua/core/options.lua <CR>"),
	dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

a.setup(dashboard.opts)

local wk_status, wk = pcall(require, "which-key")
if not wk_status then
  return
end
wk.register({
  ["D"] = { "<Cmd>Alpha<CR>", "dashboard" },
}, { prefix="<Leader>" })
