local config = function()
	vim.notify = require("notify")
	vim.notify.setup({
		background_colour = "NotifyBackground",
		fps = 60,
		icons = {
			DEBUG = "",
			ERROR = "",
			INFO = "",
			TRACE = "✎",
			WARN = ""
		},
		level = 2,
		minimum_width = 50,
		max_width = 100,
		render = "compact",
		stages = "fade_in_slide_out",
		timeout = 1500,
		top_down = true
	})
end

return {
	"rcarriga/nvim-notify",
	lazy = false,
	config = config,
}
