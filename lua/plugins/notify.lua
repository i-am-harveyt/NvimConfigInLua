local ok, notify = pcall(require, "notify")
if not ok then
	print("Notify not installed")
	return
end

vim.notify = notify
