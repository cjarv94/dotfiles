-- Load plugins
vim.g.mapleader = ","
require "lazy-bootstrap"
require("lazy").setup("plugins")

require "coq-settings"

-- Settings
require "settings"
require "keybindings"
