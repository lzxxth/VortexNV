return { 
	{ "nvim-lua/plenary.nvim" },

	{
		"nvim-telescope/telescope.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = function()
			return require("vortexnv.configs.telescope")
		end,
	},

	{
		"nvim-treesitter/nvim-treesitter",
		cmd = { "TSInstall" },
		build = ":TSUpdate",
		opts = function()
			return require("vortexnv.configs.treesitter")
		end,
	},
}
