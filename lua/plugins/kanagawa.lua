return {
	'rebelot/kanagawa.nvim',
	lazy = false,
	priority = 100,
	opts = function()
		--[[
			local hour = tonumber(os.date("%H"))

			if hour >= 8 and hour <= 18 then
				vim.cmd('colorscheme kanagawa-lotus')
			else
				vim.cmd('colorscheme kanagawa-dragon')
			end
		]]

		-- vim.cmd('colorscheme kanagawa-wave')
		vim.cmd('colorscheme kanagawa-dragon')
		-- vim.cmd('colorscheme kanagawa-lotus')
	end,
}
