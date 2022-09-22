--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', 'nn', [[:NvimTreeToggle]], {})

-- Toggle more plugins
map('n', 'l', [[:IndentLinesToggle]], {})
map('n', 'ff', [[:Telescope find_files]], {})
