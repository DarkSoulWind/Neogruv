return {
  "folke/which-key.nvim",
  "folke/neodev.nvim",
  { "folke/neoconf.nvim",              cmd = "Neoconf" },
  --[[ Gruvbox ]]
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme gruvbox]])
    end
  },
  --[[ Autoclose tags ]]
  { "townk/vim-autoclose" },
  --[[ Treesitter ]]
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  --[[ Telescope ]]
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  --[[ Buffers ]]
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
  --[[ LSP ]]
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate"   -- :MasonUpdate updates registry contents
  },
  {
    "williamboman/mason-lspconfig.nvim",
  },
  {
    "neovim/nvim-lspconfig",
  },
  --[[ Markdown ]]
  {
      "iamcco/markdown-preview.nvim",
      config = function() vim.fn["mkdp#util#install"]() end,
  },
  --[[ Commenting ]]
  {
    'numToStr/Comment.nvim',
  },
  --[[ Lualine ]]
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  --[[ Completions ]]
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "L3MON4D3/LuaSnip" },
  { "saadparwaiz1/cmp_luasnip" },
  { "rafamadriz/friendly-snippets" },
  --[[ Transparent background ]]
  {
    "xiyaowong/transparent.nvim",
    config = function()
require("transparent").setup({
  groups = { -- table: default groups
    'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
    'SignColumn', 'CursorLineNr', 'EndOfBuffer',
  },
  extra_groups = {}, -- table: additional groups that should be cleared
  exclude_groups = {"Normal"}, -- table: groups you don't want to clear
})
    end
  },
  --[[ Dashboard ]]
{
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
},
  --[[ ASCII art ]]
{ "MaximilianLloyd/ascii.nvim", dependencies = {
	"MunifTanjim/nui.nvim" 
} },

  --[[ Whichkey bindings ]]
{
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  }
},
  --[[ NvimTree ]]
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        sort_by = "case_sensitive",
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    end,
  }
}
