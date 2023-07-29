--[[ specifically for formatting only, null-ls will handle linting ]]
local ft = require("guard.filetype")

local formatters = {
	c = "clang-format",
	cpp = "clang-format",
	python = "black",
	rust = "rustfmt",
	lua = "stylua",
	htmldjango = {
		cmd = "djlint",
		args = { "--reformat", "-" },
		stdin = true,
	},
	bash = {
		cmd = "beautysh",
		args = { "$FILENAME" },
		stdin = true,
	},
	-- zsh = {
	-- 	cmd = "beautysh",
	-- 	args = { "$FILENAME" },
	-- 	stdin = true,
	-- },
  zsh = "lsp",
  haskell = {
    cmd = "fourmolu",
    args = { "--stdin-input-file", "$FILENAME" },
    stdin = true,
  },
  yaml = {
    cmd = "yamlfix",
    args = { "-" },
    stdin = true,
  }
}

for lang, formatter in pairs(formatters) do
	ft(lang):fmt(formatter)
end

require("guard").setup({ fmt_on_save = false, lsp_as_default_formatter = true })
