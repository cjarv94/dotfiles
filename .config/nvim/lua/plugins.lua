require "helpers/globals"

require "dep" {
  -- Aesthetics
    {
      "sainnhe/sonokai",
      function()
        g.sonokai_style = "shusia"
	g.termguicolors = true
        cmd [[ colorscheme sonokai ]]
      end
    },
    "luochen1990/rainbow",
    "ap/vim-css-color",

    -- LSP
    "neovim/nvim-lspconfig",

    -- File Management
    "tpope/vim-vinegar",
    "kien/ctrlp.vim",

    -- Maximizing!
    "szw/vim-maximizer",

    -- Editing
    "tpope/vim-commentary",
    "tpope/vim-surround",
    "windwp/nvim-autopairs",

    -- C
    "linluk/vim-c2h",
    "bfrg/vim-cpp-modern",

    -- Debugging
    "tpope/vim-dispatch",

    -- Git
    "tpope/vim-fugitive",
}
