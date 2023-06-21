-- Escape terminal mode to normal mode
vim.api.nvim_set_keymap("t", "<Esc>", "<C-\\><C-N>", { noremap = true })

-- Space + w to write
vim.api.nvim_set_keymap("n", "<leader>w", ":w<CR>", { noremap = true })

-- Space + q to quit
vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", { noremap = true })

-- Space + e to toggle nvim tree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true })

-- Navigating windows left and right
vim.api.nvim_set_keymap("n", "<C-H>", "<C-W>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-L>", "<C-W>l", { noremap = true })

-- Toggle mason
vim.api.nvim_set_keymap("n", "<leader>li", ":Mason<CR>", { noremap = true })

-- Move between next and previous buffers
vim.api.nvim_set_keymap("n", "<S-H>", ":BufferLineCyclePrev<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<S-L>", ":BufferLineCycleNext<CR>", { noremap = true })

-- Jump to a buffer
vim.api.nvim_set_keymap("n", "<leader>bj", ":BufferLinePick<CR>", { noremap = true })

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
