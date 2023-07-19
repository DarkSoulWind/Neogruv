require("lspsaga").setup({
	code_action = {
		show_server_name = true,
		extend_gitsigns = true,
	},
	rename = {
		whole_project = false,
		keys = {
			quit = "<esc>",
			exec = "<CR>",
		},
	},
	lightbulb = {
		enable = true,
	},
	symbols_in_winbar = {
		enable = true,
	},
})
