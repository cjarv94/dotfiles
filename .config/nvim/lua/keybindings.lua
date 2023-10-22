require "helpers/globals"
require "helpers/keyboard"

g.mapleader = ','

-- Movement/window mappings --
--
nm("<C-h>", "<C-w><C-h>")                                           -- Move to a left pane
nm("<C-j>", "<C-w><C-j>")                                           -- Move to a bottom pane
nm("<C-k>", "<C-w><C-k>")                                           -- Move to a top pane
nm("<C-l>", "<C-w><C-l>")                                           -- Move to a right pane
nm("<C-n>", ":nohlsearch<CR>")                                      -- Clear highlighting temporarily

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
nm("<Leader>ff", ":Lexplore 20<CR>")                                -- Open file explorer

-- Terminal mappings
--
nm("tt", ":terminal<CR>")                                           -- Open a terminal
tm("<C-o>", "<C-\\><C-n>")                                          -- Go to normal mode from terminal mode
