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
		build = ":TSUpdate",
		opts = function()
			return require("vortexnv.configs.treesitter")
		end,
	},

  {
    "nvim-mini/mini.nvim",
    version = false,
    
    require("mini.ai").setup()
    require("mini.comment").setup()
    require("mini.surround").setup() 	
  },
}
