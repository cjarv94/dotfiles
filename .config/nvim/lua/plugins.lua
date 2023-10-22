require "helpers/globals"
require "helpers/keyboard"

require "dep" {
	-- Aesthetics
	{
		"sainnhe/sonokai",
		function()
			g.sonokai_style = "shusia"
			g.termguicolors = true
			cmd [[ colorscheme sonokai ]]
		end,
	},
	"luochen1990/rainbow",
	"ap/vim-css-color",

	-- LSP
	{
		"neovim/nvim-lspconfig",
		function()
			nm('K', '<cmd>lua vim.lsp.buf.hover()<CR>' )
			nm('ga', '<cmd>lua vim.lsp.buf.code_action()<CR>')
			nm('gR', '<cmd>lua vim.lsp.buf.rename()<CR>')
			nm('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
		end,
	},

	-- File Management
	"tpope/vim-vinegar",
	"kien/ctrlp.vim",

	-- Maximizing!
	{
		"szw/vim-maximizer",
		function()
			nm("mm", ":MaximizerToggle<CR>")
			nm("mM", "<C-w>H<C-w><C-w>mm<C-w><C-w><C-w><C-w>")
		end,
	},

	-- Editing
	"tpope/vim-commentary",
	"tpope/vim-surround",
	"windwp/nvim-autopairs",

	-- C
	{
		"linluk/vim-c2h",
		function()
			nm("<Leader>cc", ":C2H<CR>")
		end,
	},
	"bfrg/vim-cpp-modern",

	-- Debugging
	{
		"tpope/vim-dispatch",
		function()
			nm("<Leader>,", ":Start<CR>")
			nm("<Leader>.", ":Dispatch!<CR>")
		end,
	},

	-- Git
	"tpope/vim-fugitive",
}
