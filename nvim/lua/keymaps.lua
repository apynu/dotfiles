local map = vim.api.nvim_set_keymap

-- switching windows
map("n", "<C-l>", "<C-w>l", {})
map("n", "<C-h>", "<C-w>h", {})

map("n", "<C-k>", "<C-w>k", {})
map("n", "<C-j>", "<C-w>j", {})

-- split windows
map("n", "<leader>t", ":vsplit<CR>", {})
map("n", "<leader>w", ":split<CR>", {})
