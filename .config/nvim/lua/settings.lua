require "helpers/globals"

opt.hidden = true -- Allow for hidden buffers
opt.autoread = true -- Autoload changes in files

opt.termguicolors = true

opt.guifont = "RobotoMono Nerd Font Mono:h20"

opt.colorcolumn = "80"
opt.hlsearch = true -- Highlight search options

-- opt.cmdheight = 1 -- More room for messages

-- Smart indentation, 8-char tabs
opt.expandtab = false
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 0 -- Inherit the tabstop value

opt.number = true
opt.relativenumber = true
opt.numberwidth = 10

opt.wrap = false

opt.belloff = "all"

opt.undofile = true
opt.undodir= os.getenv("HOME") .. "/.config/nvim/undodir"

-- Set clipboard to system clipboard
opt.clipboard = 'unnamedplus' -- Use system clipboard

opt.foldmethod = 'syntax'
opt.foldenable = false
