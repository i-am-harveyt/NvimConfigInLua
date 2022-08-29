local keymap = vim.keymap
require("keymaps")

-- abbriviation
local s = keymap.set

-- Increment/Decrement
s('n', "+", "<C-a>")
s('n', "-", "<C-x>")

