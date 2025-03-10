-- require("rose-pine").setup({
-- 	dark_variant = "moon",
-- 	disable_background = false,
-- })
-- vim.cmd("colorscheme rose-pine")

-- require("gruvbox").setup({
-- 	terminal_colors = true, -- add neovim terminal colors
-- 	undercurl = true,
-- 	underline = true,
-- 	bold = true,
-- 	italic = {
-- 		strings = true,
-- 		emphasis = true,
-- 		comments = true,
-- 		operators = false,
-- 		folds = true,
-- 	},
-- 	strikethrough = true,
-- 	invert_selection = false,
-- 	invert_signs = false,
-- 	invert_tabline = false,
-- 	invert_intend_guides = false,
-- 	inverse = true, -- invert background for search, diffs, statuslines and errors
-- 	contrast = "hard", -- can be "hard", "soft" or empty string
-- 	palette_overrides = {},
-- 	overrides = {},
-- 	dim_inactive = false,
-- 	transparent_mode = false,
-- })
-- vim.o.background = "dark"
-- vim.cmd("colorscheme gruvbox")

require("kanagawa").setup({
	compile = false, -- enable compiling the colorscheme
	undercurl = true, -- enable undercurls
	commentStyle = { italic = true },
	functionStyle = {},
	keywordStyle = { italic = true },
	statementStyle = { bold = true },
	typeStyle = {},
	transparent = false, -- do not set background color
	dimInactive = true, -- dim inactive window `:h hl-NormalNC`
	terminalColors = true, -- define vim.g.terminal_color_{0,17}
	colors = { -- add/modify theme and palette colors
		palette = {},
		theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
	},
	overrides = function() -- add/modify highlights
		return {}
	end,
	theme = "wave", -- Load "wave" theme when 'background' option is not set
	background = { -- map the value of 'background' option to a theme
		dark = "wave", -- try "wave" !
		light = "lotus",
	},
})
vim.cmd("colorscheme kanagawa")

require("ibl").setup({
	indent = {
		char = "┊",
	},
})

require("lualine").setup({
	options = {
		component_separators = "",
		section_separators = "",
		theme = "auto",
		--theme = "solarized",
		disabled_filetypes = {
			"NvimTree",
		},
	},
	sections = {
		lualine_a = { "filename" },
		lualine_b = { "location" },
		lualine_c = { "diagnostics" },
		lualine_x = { "" },
		lualine_y = { "diff" },
		lualine_z = { "branch" },
	},
})
