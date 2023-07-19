local wk = require("which-key")

local telescope = require("telescope.builtin")
local mappings = {
	q = { ":q<CR>", "Close window" },
	w = { ":w<CR>", "Save" },
	e = { ":NvimTreeToggle<CR>", "Toggle file explorer" },
	c = { "<cmd>Bdelete<CR>", "Close buffer" },
	["/"] = {},
	b = {
		name = "Buffer",
		j = { ":BufferLinePick<CR>", "Jump to buffer" },
	},
	f = {
		name = "Telescope",
		f = { telescope.find_files, "Find file" },
		g = { telescope.live_grep, "Find text" },
		b = { telescope.buffers, "View buffers" },
		h = { telescope.help_tags, "Help tags" },
		r = { telescope.oldfiles, "Recent files" },
    c = { ":Telescope colorscheme<CR>", "Change colorscheme" },
	},
	l = {
		name = "LSP",
		I = { ":Mason<CR>", "Mason" },
		i = { ":LspInfo<CR>", "LSP info" },
		a = { ":Lspsaga code_action<CR>", "Code action" },
		r = { ":Lspsaga rename<CR>", "Rename" },
		f = { vim.lsp.buf.format, "Format" },
		R = { ":Lspsaga finder<cr>", "Finder" },
	},
	x = {
		name = "Trouble",
		x = { "<cmd>TroubleToggle<cr>", "Toggle Trouble" },
		w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace diagnostics" },
		d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document diagnostics" },
		l = { "<cmd>TroubleToggle loclist<cr>", "Local list" },
		q = { "<cmd>TroubleToggle quickfix<cr>", "Quickfixes" },
	},
	N = {
		name = "Neogruv",
    c = { ":edit $MYVIMRC<CR>", "Edit config file" },
    s = { ":source $MYVIMRC<CR>", "Restart Neogruv" },
	},
  t = {
    name = "Terminal",
    t = { ":Lspsaga term_toggle<CR>", "Toggle float terminal" },
    s = { ":terminal<CR>", "Spawn terminal" },
  }
}

local opts = { prefix = "<leader>" }

wk.register(mappings, opts)
