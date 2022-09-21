--[[ init.lua ]]

vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('vars')      -- Variables
require('opts')      -- Options
require('keys')      -- Keymaps
require('plug')      -- Plugins

-- PLUGINS
require('nvim-tree').setup()
local dracula = require("dracula")
dracula.setup()

vim.cmd[[colorscheme dracula]]
require('lualine').setup {
    options = {
        theme = 'dracula'
    }
}
require('nvim-autopairs').setup{}


vim.cmd "source vim/coc.vim"
