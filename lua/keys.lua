-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
-- local map = vim.keymap.set
local noremap = { noremap = true, silent = true }
-- remap the key used to leave insert mode
map('i', 'jk', '<ESC>', noremap)

-- Toggle nvim-tree
map('n', '<leader>nn', [[:NvimTreeToggle <CR>]], {desc = "NVimTree"})

-- Toggle more plugins
-- map('n', 'l', [[:IndentLinesToggle]], {})
map('n', '<leader>ff', [[:Telescope find_files <CR>]], {desc = "Telescope find files"})
map('n', '<leader>fg', [[:Telescope live_grep <CR>]], {desc = "Telescope live grep"})
map('n', '<leader>fb', [[:Telescope buffers <CR>]], {desc = "Telescope buffers"})
map('n', '<leader>fh', [[:Telescope help_tags <CR>]], {desc = "Telescope help tags"})
map('n', '<leader>fp', [[:Telescope neoclip <CR>]], {desc = "Telescope neoclip"})


-- nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
-- nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
-- nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
-- nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

-- Show Coc diagnostics for current line
map('n', '<leader>;;', [[:call CocAction('diagnosticInfo') <CR>]], {desc = "Diagnostic Info"})
