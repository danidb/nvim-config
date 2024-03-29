return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("rebelot/kanagawa.nvim")
	-- use("folke/tokyonight.nvim")
	use({
		"rose-pine/nvim",
		as = "rose-pine",
	})
	use({
		"folke/zen-mode.nvim",
		config = function()
			require("zen-mode").setup({})
		end,
	})
	use({
		"folke/todo-comments.nvim",
		config = function()
			require("todo-comments").setup({})
		end,
	})
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.4",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
	})
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use("windwp/nvim-ts-autotag")
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("kyazdani42/nvim-web-devicons")
	use({
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				mode = "document_diagnostics",
				auto_open = true,
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig")
	use("jose-elias-alvarez/typescript.nvim")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("saadparwaiz1/cmp_luasnip")
	use("L3MON4D3/LuaSnip")
	use("mhartington/formatter.nvim")
	use("simrat39/rust-tools.nvim")
	use("nvim-lua/plenary.nvim")
	use("mfussenegger/nvim-dap")
	use("ellisonleao/gruvbox.nvim")
	-- use({
	-- 	"maxmx03/solarized.nvim",
	-- 	config = function()
	-- 		local success, solarized = pcall(require, "solarized")
	--
	-- 		vim.o.background = "dark"
	--
	-- 		solarized:setup({
	-- 			config = {
	-- 				theme = "neovim",
	-- 				transparent = true,
	-- 			},
	-- 		})
	--
	-- 		vim.cmd("colorscheme solarized")
	-- 	end,
	-- })
end)
