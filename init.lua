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
require('theme')     -- Color theme settings

-- PLUGINS
require('nvim-tree').setup()

require('lualine').setup {
    options = {
        theme = 'nightfox'
    }
}
require('nvim-autopairs').setup{}
require 'colorizer'.setup {
  'css';
  'sass';
  'javascript';
  'typescript';
  'javascriptreact';
  'typescriptreact';
  html = {
    mode = 'foreground';
  }
}
require("auto-save").setup {
    debounce_delay=2500
}

local wk = require("which-key")
wk.register({
  ["<leader>f"] = { name = "+file" },
  ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Find File" },
  ["<leader>fr"] = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
  ["<leader>fn"] = { "<cmd>enew<cr>", "New File" },
})

vim.cmd "source ~/.config/nvim/vim/coc.vim"
