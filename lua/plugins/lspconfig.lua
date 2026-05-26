return {
	'neovim/nvim-lspconfig',
	lazy = false,
	priority = 99,
	dependencies = {
		'saghen/blink.cmp',
	},
	config = function()
		-- LSP keymaps
        vim.api.nvim_create_autocmd('LspAttach', {
            group = vim.api.nvim_create_augroup('UserLspConfig', {}),
            callback = function(ev)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = ev.buf, desc = 'goto definition' })
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = ev.buf, desc = 'goto declaration' })
                vim.keymap.set('n', 'gr', vim.lsp.buf.references, { buffer = ev.buf, desc = 'find references' })
                vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, { buffer = ev.buf, desc = 'goto implementation' })
                vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, { buffer = ev.buf, desc = 'rename symbol' })
                vim.keymap.set({ 'n', 'v' }, '<Leader>ca', vim.lsp.buf.code_action, { buffer = ev.buf, desc = 'code action' })
                vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, { buffer = ev.buf, desc = 'show diagnostic' })
                vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { buffer = ev.buf, desc = 'previous diagnostic' })
                vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { buffer = ev.buf, desc = 'next diagnostic' })
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = ev.buf, desc = 'hover documentation' })
            end,
        })
		local capabilities = require('blink.cmp').get_lsp_capabilities()
		vim.lsp.config.gopls = {
			cmd = { 'gopls' },
			filetypes = { 'go', 'gomod' },
			root_markers = { 'go.mod', '.git' },
			capabilities = capabilities,
		}
		vim.lsp.enable('gopls')
	end,
}
