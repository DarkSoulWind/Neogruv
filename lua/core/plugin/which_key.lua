local wk = require("which-key")

local telescope = require('telescope.builtin')
local mappings = {
  q = {":q<CR>", "Close window"},
  w = {":w<CR>", "Save"},
  e = {":NvimTreeToggle<CR>", "Toggle file explorer"},
  c = {":bdelete<CR>", "Close buffer"},
  ["/"] = {},
  b = {
    name = "Buffer",
    j = {":BufferLinePick<CR>", "Jump to buffer"},
  },
  f = {
    name = "Telescope",
    f = {telescope.find_files, "Find file"},
    g = {telescope.live_grep, "Find text"},
    b = {telescope.buffers, "View buffers"},
    h = {telescope.help_tags, "Help tags"},
    r = {telescope.oldfiles, "Recent files"},
  },
  l = {
    name = "LSP",
    i = {":Mason<CR>", "Mason"},
    a = {vim.lsp.buf.code_action, "Code action"},
    r = {vim.lsp.buf.rename, "Rename"},
  },
  N = {
    name = "Neogruv",
    c = {":e ~/.config/nvim/init.lua<CR>", "Edit config file"}
  }
}
local opts = { prefix = "<leader>" }

wk.register(mappings, opts)
