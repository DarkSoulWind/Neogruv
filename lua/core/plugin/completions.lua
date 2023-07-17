local cmp = require("cmp")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	mapping = cmp.mapping.preset.insert({
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		-- Add tab support
		["<S-Tab>"] = cmp.mapping.select_prev_item(),
		["<Tab>"] = cmp.mapping.select_next_item(),
		["<C-S-f>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	-- sorting = {
	-- 	priority_weight = 1.0,
	-- 	comparators = {
	-- 		-- compare.score_offset, -- not good at all
	-- 		compare.locality,
	-- 		compare.recently_used,
	-- 		compare.score, -- based on :  score = score + ((#sources - (source_index - 1)) * sorting.priority_weight)
	-- 		compare.offset,
	-- 		compare.order,
	-- 		-- compare.scopes, -- what?
	-- 		-- compare.sort_text,
	-- 		-- compare.exact,
	-- 		-- compare.kind,
	-- 		-- compare.length, -- useless
	-- 	},
	-- },
})
