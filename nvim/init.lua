require("config.lazy")
require("keymaps")

-- use kanagawa-dragon for dark version
vim.cmd("colorscheme kanagawa-lotus")

-- tab conform cpp
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp" },
	callback = function()
		vim.bo.shiftwidth = 2 -- Match clang-format
		vim.bo.tabstop = 2 -- Match clang-format
		vim.bo.softtabstop = 2
		vim.bo.expandtab = true -- Convert tabs to spaces
	end,
})
