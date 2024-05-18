-- vim.cmd("colorscheme hardhacker") 启用对应的主题
-- 选择你想使用的主题，然后去掉它的注释（如果有的话)
return {
	{
		"hardhackerlabs/theme-vim",
		name = "hardhacker",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.hardhacker_darker = 0
			vim.g.hardhacker_hide_tilde = 1
			vim.g.hardhacker_keyword_italic = 1
			-- vim.cmd("colorscheme hardhacker")
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			--vim.cmd("colorscheme tokyonight-storm")
		end,
	},
	{
        "rebelot/kanagawa.nvim",
		lazy = false,
		priority = 1000,
        config = function()
            -- Default options:
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
                theme = "wave",              -- Load "wave" theme when 'background' option is not set
                background = {               -- map the value of 'background' option to a theme
                    dark = "wave",           -- try "dragon" !
                    light = "lotus"
                },
            })
			-- setup must be called before loading
			--vim.cmd("colorscheme kanagawa") -- 一坨黑用不了
			vim.cmd("colorscheme kanagawa-wave") -- 暗色 
			--vim.cmd("colorscheme kanagawa-dragon") -- 更暗的暗色
			-- vim.cmd("colorscheme kanagawa-lotus") -- 屎黄色
        end,
    },
}
