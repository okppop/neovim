return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.8',
	lazy = true,
	keys = {
		{ desc = 'telescope find_files', mode = 'n', '<Leader>ff', '<CMD>Telescope find_files<CR>' },
		{ desc = 'telescope live_grep', mode = 'n', '<Leader>fg', '<CMD>Telescope live_grep<CR>' },
		{ desc = 'telescope buffers', mode = 'n', '<Leader>fb', '<CMD>Telescope buffers<CR>' },
		{ desc = 'telescope help_tags', mode = 'n', '<Leader>fh', '<CMD>Telescope help_tags<CR>' },
		{ desc = 'telescope resume', mode = 'n', '<Leader>fr', '<CMD>Telescope resume<CR>' },
		{ desc = 'telescope oldfiles', mode = 'n', '<Leader>fo', '<CMD>Telescope oldfiles<CR>' },
	},
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
}
