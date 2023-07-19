--[[ these servers are only configured with the on_attach function and capabilities ]]
local default_servers = { "pyright", "tsserver", "rust_analyzer", "cssls", "tailwindcss", "bashls", "taplo" }

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = default_servers,
})

local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>lr", ":Lspsaga rename<CR>", {})
	vim.keymap.set("n", "<leader>la", ":Lspsaga code_action<CR>", {})

	vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
	vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
	vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, {})
	vim.keymap.set("n", "K", ":Lspsaga hover_doc<CR>", {})
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()


local lsp = require("lspconfig")
lsp.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
			},
		},
	},
})

for _, server in pairs(default_servers) do
	lsp[server].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

--[[ RUST TOOLS ]]
local rt = require("rust-tools")

rt.setup({
	server = {
		on_attach = function(_, bufnr)
			-- Hover actions
			vim.keymap.set("n", "K", rt.hover_actions.hover_actions, { buffer = bufnr })
			-- Code action groups
			vim.keymap.set("n", "<Leader>la", rt.code_action_group.code_action_group, { buffer = bufnr })
		end,
	},
})

-- LSP Diagnostics Options Setup
local sign = function(opts)
	vim.fn.sign_define(opts.name, {
		texthl = opts.name,
		text = opts.text,
		numhl = "",
	})
end

sign({ name = "DiagnosticSignError", text = "" })
sign({ name = "DiagnosticSignWarn", text = "" })
sign({ name = "DiagnosticSignHint", text = "" })
sign({ name = "DiagnosticSignInfo", text = "" })

vim.diagnostic.config({
	virtual_text = false,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = false,
	float = {
		border = "rounded",
		source = "always",
		header = "",
		prefix = "",
	},
})

vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
