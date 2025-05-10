local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader-based mappings
map("n", "<leader>ff", "<cmd>Telescope find_files<CR>", opts)
map("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", opts)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", opts)
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", opts)

-- NvimTree toggle
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", opts)
