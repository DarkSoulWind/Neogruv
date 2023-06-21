require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "pyright" }
})

local on_attach = function(_, _)
  vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>la", vim.lsp.buf.code_action, {})

  vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
  vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
end

local lsp = require("lspconfig")
lsp.lua_ls.setup {
  on_attach = on_attach
}
lsp.pyright.setup {
  on_attach = on_attach
}
