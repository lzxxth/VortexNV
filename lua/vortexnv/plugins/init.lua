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

    config = function()
      require("mini.ai").setup()
      require("mini.comment").setup()
      require("mini.pairs").setup()
      require("mini.surround").setup()
    end,
  },

  {
    "williamboman/mason.nvim",
    config = function()
        return require("vortexnv.configs.mason")
    end,
  },
  
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      return require("vortexnv.configs.lspconfig")
    end,
  },

  {
    "L3MON4D3/LuaSnip",
		dependencies = { "rafamadriz/friendly-snippets" },
    enabled = true,
    config = function(_,opts)
      require "vortexnv.configs.luasnip"
    end,
  },

  {
    "saghen/blink.cmp",
    enabled = true,
    opts = function()
      return require("vortexnv.configs.blink")
    end,
    opts_extend = { "sources.default" }
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      return require("vortexnv.configs.lualine")
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    config = function()
      require("ibl").setup()
    end,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
