local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
	print("")
else
	wk.register({
		["g"] = {
			name = "git",
			["b"] = { "<Cmd>Gitsigns blame_line<Cr>", "blame_line" },
		},
	}, { prefix = "<Space>" })
end
return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require('gitsigns').setup()
	end
}
