return {
	{
		"lukas-reineke/indent-blankline.nvim",
		-- Version3 配置
		main = "ibl",
		opts = {},
		config = function()
			local highlight = {
				--"CursorColumn",
				"NonText",
				"Whitespace",
			}
			require("ibl").setup({
				indent = { 
					highlight = highlight, 
					--char = "│", -- 只会显示当前作用域
					--char = "|",
					--char = "▎", -- 只会显示当前作用域
					--char = "",
					char = "⎜",
					smart_indent_cap = true,
				},
    			whitespace = {
        			highlight = highlight,
        			remove_blankline_trail = true,
    			},
    			scope = { 
					enabled = true,
        			-- priority = 2000,
        			-- char = { "▎" },
				},
			})
		end,
        -- opts = {
        --     char = '┊',
        --     show_trailing_blankline_indent = false
        -- }
		-- config = function()
		-- 	require("indent_blankline").setup({
		-- 		show_current_context = true,
		-- 		show_current_context_start = true,
		-- 	})
		-- end,
	},
}
