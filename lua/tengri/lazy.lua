local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
	{ "folke/neodev.nvim", opts = {} },
	{
		"neovim/nvim-lspconfig",
		"williamboman/mason-lspconfig.nvim",
		"williamboman/mason.nvim",
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip'
	},
	{
		'm4xshen/autoclose.nvim',
		config = function()
			require("autoclose").setup()
		end
	},
	"xiyaowong/transparent.nvim",
	{
		'numToStr/Comment.nvim',
		config = function()
			require("Comment").setup()
		end,
		lazy = false,
	},
	{
		'brenoprata10/nvim-highlight-colors',
		event = "VeryLazy",
		config = function()
			require("nvim-highlight-colors").setup()
			vim.cmd("HighlightColorsOn")
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		config = function()
			require 'nvim-treesitter.configs'.setup({
				auto_install = true,
				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
			})
		end,
	},

	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.1',
		dependencies = { 'nvim-lua/plenary.nvim' },
		cmd = "Telescope"
	},
})
