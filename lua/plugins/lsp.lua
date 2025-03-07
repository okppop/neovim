return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		priority = 99,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		priority = 98,
	},
	{
		'williamboman/mason-lspconfig.nvim',
		lazy = false,
		priority = 97,
		config = function()
			-- mason
			require("mason").setup()
			require('mason-lspconfig').setup()

			-- lspconfig
			require('lspconfig').lua_ls.setup{}
			-- require('lspconfig').gopls.setup{}
		end,
		dependencies = {
			'williamboman/mason.nvim',
			'neovim/nvim-lspconfig',
		},
	},
}
