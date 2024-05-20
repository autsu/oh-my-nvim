return {
	-- Your Plugin1
	--  {
	--      'hardhacker/plugin1',
	--      config = function() ... end
	--  },

	-- Your Plugin2
	--  {'hardhacker/plugin2'},
	--
	-- 当前单词下划线
	{
		'yamatsum/nvim-cursorline',
		config = function()
			require('nvim-cursorline').setup {
				cursorline = {
				  enable = true,
				  timeout = 1000,
				  number = false,
				},
				cursorword = {
				  enable = true,
				  min_length = 1,
				  hl = { underline = true },
				}
			  }
		end
	},
	-- 自动保存
	{
		"Pocco81/auto-save.nvim",
		config = function()
			 require("auto-save").setup {
				-- your config goes here
				-- or just leave it empty :)
			 }
		end,
	},
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		branch = "dev",
		opts = {
		 -- your configuration comes here
		 -- or leave it empty to use the default settings
		 -- refer to the configuration section below
		},
	},
}
