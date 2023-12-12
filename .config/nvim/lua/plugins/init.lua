return {
	-- Base
	{
		"nvim-lua/plenary.nvim",
		lazy = false, -- only load as a dependency
	},
	-- Aesthetics
	{
		-- Main colorsheme, needs to load before all other plugins
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			vim.opt.termguicolors = true
			vim.opt.background = 'dark'
			vim.g.sonokai_style = "espresso"
			vim.cmd [[ colorscheme sonokai ]]
		end,
	},
	"luochen1990/rainbow",
	"ap/vim-css-color",
	{
		"nvim-tree/nvim-web-devicons",
		lazy = true,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			require("lualine").setup({
				options = {
					theme = "sonokai",
				},
			})
		end,
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"https://github.com/akinsho/bufferline.nvim",
		lazy = false,
		config = function()
			require("bufferline").setup()
		end
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		config = function()
			require('nvim-treesitter.configs').setup({
			  ensure_installed = { "c", "lua" },
			  sync_install = false,
			  auto_install = false,
			  highlight = {
				enable = true,

				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,

				additional_vim_regex_highlighting = false,
			  },
			})
		end,
		build = function()
			vim.fn.TSUpdate()
		end,
	},

	-- LSP
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local lspconfig = require('lspconfig')
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.clangd.setup({ capabilities = capabilities })
			lspconfig.ols.setup({ capabilities = capabilities })
		end,
		keys = {
			{ 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', desc = "Show LSP Info", },
			{ 'ga', '<cmd>lua vim.lsp.buf.code_action()<CR>', desc = "LSP Code Action", },
			{ 'gR', '<cmd>lua vim.lsp.buf.rename()<CR>', desc = "LSP Rename", },
			{ 'gd', '<cmd>lua vim.lsp.buf.declaration()<CR>', desc = "LSP Go-to-declaration", },
		},
		dependencies = { "hrsh7th/cmp-nvim-lsp" },
	},
	{
		"folke/trouble.nvim",
		lazy = false,
		keys = {
			{ '<Leader>q', ':TroubleToggle<CR>', desc = "Show errors/warnings via Trouble", },
		},
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	
	-- Completions
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"dcampos/nvim-snippy",
			"dcampos/cmp-snippy",
			"honza/vim-snippets",
		},
		config = function()
			local cmp = require("cmp")

			cmp.setup({
				snippet = {
					expand = function(args)
						require("snippy").expand_snippet(args.body)
					end,
				},
				sources = cmp.config.sources({
					{ name = "snippy" },
					{ name = 'nvim_lsp' },
				}, {
					{ name = 'buffer' },
				}),
				mapping = {
					['<CR>'] = cmp.mapping.confirm({ select = true }),
				},
			})
		end
	},

	-- Navigation
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local center_list = require("telescope.themes").get_dropdown({
				winblend = 10,
				width = 0.5,
				prompt = " ",
				results_height = 15,
				previewer = false,
			})
			require("telescope").setup({
				pickers = {
					find_files = {
						theme = "ivy",
					},
				},
			})
		end,
		keys = {
			{ "<Leader>f", ":Telescope find_files<CR>", desc = "Open filepicker" },
			{ "<Leader>g", ":Telescope live_grep<CR>", desc = "Open live searchbar" },
		},
	},

	-- File Management
	"tpope/vim-vinegar",

	-- Maximizing!
	{
		"szw/vim-maximizer",
		lazy = true,
		keys = {
			{ "mm", ":MaximizerToggle<CR>", desc = "Toggle Maximizer", },
			{ "mM", "<C-w>H<C-w><C-w>mm<C-w><C-w><C-w><C-w>", desc = "Zoom one of two horizontally aligned views in a aesthetically pleasing fashion.", },
		},
	},

	-- -- Editing
	"tpope/vim-commentary",
	"tpope/vim-surround",
	"windwp/nvim-autopairs",

	-- C
	{
		"linluk/vim-c2h",
		lazy = true,
		keys = {
			{ "<Leader>cc", ":C2H<CR>", desc = "Switch between C/C++ source/header files", },
		},
	},
	"bfrg/vim-cpp-modern",

	-- Odin
	"Tetralux/odin.vim",

	-- Nim
	"alaviss/nim.nvim",

	-- Debugging
	{
		"tpope/vim-dispatch",
		lazy = true,
		keys = {
			{ "<Leader>,", ":Dispatch<CR>", desc = "Foreground Build", },
			{ "<Leader>.", ":Dispatch!<CR>", desc = "Background Build", },
		},
	},

	-- Git
	"tpope/vim-fugitive",

	-- Tmux
	{
		"aserowy/tmux.nvim",
		lazy = false,
		init = function()
			require('tmux').setup {
				copy_sync = {
					sync_clipboard = false, -- Already doing this
				},
			}
		end,
	},
	{
		"jpalardy/vim-slime",
		lazy = false,
		init = function()
			vim.g.slime_target = "tmux"
		end,
	},
}
