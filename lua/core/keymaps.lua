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

-- Close buffer
vim.api.nvim_set_keymap("n", "<leader>c", ":bd<CR>", { noremap = true })

-- Edit config file
vim.api.nvim_set_keymap("n", "<leader>Nc", ":edit $MYVIMRC<CR>", { noremap = true })

-- Reload neovim without restarting neovim
vim.api.nvim_set_keymap("n", "<leader>Ns", ":source $MYVIMRC<CR>", { noremap = true })

-- Telescope
local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>fr", builtin.oldfiles, {})

-- Trouble
vim.keymap.set("n", "<leader>xx", "<cmd>TroubleToggle<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xl", "<cmd>TroubleToggle loclist<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>lR", "<cmd>TroubleToggle lsp_references<cr>", { silent = true, noremap = true })

-- Copilot
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.copilot_tab_fallback = ""
--[[ vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true }) ]]

--[[ Selecting blocks of code with treesitter incremental selection, then yanking and pasting it over other blocks. Also the killer remaps: ]]
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
