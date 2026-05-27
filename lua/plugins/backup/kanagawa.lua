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
		require('kanagawa').setup({
		    compile = false,             -- enable compiling the colorscheme
		    undercurl = true,            -- enable undercurls
		    commentStyle = { italic = true },
		    functionStyle = {},
		    keywordStyle = { italic = true},
		    statementStyle = { bold = true },
		    typeStyle = {},
		    transparent = false,         -- do not set background color
		    dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
		    terminalColors = true,       -- define vim.g.terminal_color_{0,17}
		    colors = {                   -- add/modify theme and palette colors
		        palette = {},
		        theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
		    },
		    overrides = function(colors) -- add/modify highlights
		        return {}
		    end,
		    theme = "wave",              -- Load "wave" theme
		    background = {               -- map the value of 'background' option to a theme
		        dark = "wave",           -- try "dragon" !
		        light = "lotus"
		    },
		})

		-- vim.cmd('colorscheme kanagawa-wave')
		-- vim.cmd('colorscheme kanagawa-dragon')
		vim.cmd('colorscheme kanagawa-lotus')
	end,
}
