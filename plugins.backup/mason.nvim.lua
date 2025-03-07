return {
    "williamboman/mason.nvim",
	lazy = false,
	priority = 99,
	config = function()
		require("mason").setup()
	end
}
