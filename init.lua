--[[ init.lua ]]
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- Some startify bookmarks
vim.g.startify_bookmarks = {
    "~/.zshrc", 
    "~/.config/nvim", 
    "~/Sites", 
    "~/Sites/mobile-client", 
    "~/Sites/arthur-kovacs-is", 
    "~/Sites/reactblitz"
}


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
  'rust';
  html = {
    mode = 'foreground';
  }
}
require("auto-save").setup {
    debounce_delay=2500
}

require('which-key').setup{}

-- Telescope Extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('neoclip')

vim.cmd "source ~/.config/nvim/vim/coc.vim"
