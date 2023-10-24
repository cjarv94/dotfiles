require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ','

-- Config file mappings --
--
local lua_config_dir = os.getenv("HOME") .. "/.config/nvim/lua/"

nm("<Leader>sv", ":source $MYVIMRC<CR>")                           -- Edit vim config in new tab
nm("<Leader>ev", ":tabedit " .. lua_config_dir .. "<CR>")          -- Source vim config

-- Tab mappings --
--
nm("<Leader>t", ":tabnew<CR>")                                      -- Open a new tab
nm("<S-h>", ":tabprev<CR>")                                         -- Switch to left tab
nm("<S-l>", ":tabnext<CR>")                                         -- Switch to right tab
nm("<Leader>f", ":Lexplore 20<CR>")                                 -- Open file explorer

-- Terminal mappings
--
nm("tt", ":terminal<CR>")                                           -- Open a terminal
tm("<C-o>", "<C-\\><C-n>")                                          -- Go to normal mode from terminal mode
