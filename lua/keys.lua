-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap

-- remap the key used to leave insert mode
map('i', 'jk', '', {})

-- Toggle nvim-tree
map('n', '<leader>nn', [[:NvimTreeToggle <CR>]], {})

-- Toggle more plugins
-- map('n', 'l', [[:IndentLinesToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files <CR>]], {})
map('n', '<leader>fg', [[:Telescope live_grep <CR>]], {})
map('n', '<leader>fb', [[:Telescope buffers <CR>]], {})
map('n', '<leader>fh', [[:Telescope help_tags <CR>]], {})


-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- Show Coc diagnostics for current line
map('n', '<leader>;;', [[:call CocAction('diagnosticInfo') <CR>]], {})
