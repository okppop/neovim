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
				vim.lsp.inlay_hint.enable(true, { bufnr = ev.buf })
	
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
				vim.keymap.set('n', '<Leader>ct', function()
					vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = ev.buf }), { bufnr = ev.buf })
				end)
			end,
		})
		local capabilities = require('blink.cmp').get_lsp_capabilities()
	
		-- gopls
		vim.lsp.config.gopls = {
			cmd = { 'gopls' },
			filetypes = { 'go', 'gomod' },
			root_markers = { 'go.mod', '.git' },
			capabilities = capabilities,
			settings = {
				gopls = {
					hints = {
						assignVariableTypes = true,
						compositeLiteralFields = true,
						compositeLiteralTypes = true,
						constantValues = true,
						functionTypeParameters = true,
						ignoredError = true,
						parameterNames = false,
						rangeVariableTypes = true,
					},
				},
			},
		}
		vim.api.nvim_create_autocmd('BufWritePre', {
			pattern = "*.go",
			callback = function(ev)
				vim.lsp.buf.format({
					bufnr = ev.buf,
					async = false,
					timeout_ms = 1000,
					filter = function(client)
						return client.name == 'gopls'
					end,
				})
			end,
		})
		vim.lsp.enable('gopls')
	
		-- zls
		vim.lsp.config.zls = {
			cmd = { 'zls' },
			filetypes = { 'zig' },
			root_markers = { 'build.zig', '.git' },
			capabilities = capabilities,
		}
		vim.api.nvim_create_autocmd('BufWritePre', {
			pattern = "*.zig",
			callback = function(ev)
				vim.lsp.buf.format({
					bufnr = ev.buf,
					async = false,
					timeout_ms = 1000,
					filter = function(client)
						return client.name == 'zls'
					end,
				})
			end,
		})
		vim.lsp.enable('zls')
	
		-- clangd
		vim.lsp.config.clangd = {
			cmd = { 'clangd' },
			filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'h', 'hpp' },
			root_markers = { '.git', '.clangd', 'compile_commands.json' },
			capabilities = capabilities,
			settings = {
				clangd = {
					arguments = { '--background-index' },
					inlayHints = {
						enabled = true,
						parameterNames = true,
						deducedTypes = true,
					},
				},
			},
		}
		vim.api.nvim_create_autocmd('BufWritePre', {
			pattern = { "*.c", "*.cpp", "*.h", "*.hpp", "*.cc", "*.cxx", "*.hh" },
			callback = function(ev)
				vim.lsp.buf.format({
					bufnr = ev.buf,
					async = false,
					timeout_ms = 1000,
					filter = function(client)
						return client.name == 'clangd'
					end,
				})
			end,
		})
		vim.lsp.enable('clangd')
	end,
}
