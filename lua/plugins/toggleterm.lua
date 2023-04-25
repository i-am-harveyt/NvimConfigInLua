local config = function()
	require('toggleterm').setup()
end

local wk_ok, wk = pcall(require, "which-key")
if wk_ok then
	wk.register({
			t = {
				name = "+ToggleTerm",
				f = {
					"<Cmd>ToggleTerm size=5 direction=float<CR>",
					"Float"
				},
				h = {
					"<Cmd>ToggleTerm size=9 direction=horizontal<CR>",
					"Horizontal"
				}
			},
		},
		{ prefix = "<Space>" }
	)
end

return {
	'akinsho/toggleterm.nvim',
	config = config
}
