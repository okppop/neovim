return {
	'williamboman/mason-lspconfig.nvim',
	lazy = false,
	priority = 97,
	config = function()
		require('mason-lspconfig').setup()
	end
	dependencies = { 
		-- 'williamboman/mason.nvim',
		-- 'neovim/nvim-lspconfig',
	},
}
