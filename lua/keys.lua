-- [[ keys.lua ]]
local map = vim.api.nvim_set_keymap
-- local map = vim.keymap.set
local noremap = { noremap = true, silent = true }
local opts = { noremap = true, silent = true }

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

-- Show Coc diagnostics for current line
map('n', '<leader>;;', [[:call CocAction('diagnosticInfo') <CR>]], {desc = "Diagnostic Info"})

-- Move to previous/next
map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', {desc = "Previous Tab"})
map('n', '<C-.>', '<Cmd>BufferNext<CR>', {desc = "Next Tab"})
-- Re-order to previous/next
map('n', '<C-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<C->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
-- map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>', opts)
-- map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>', opts)
-- map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>', opts)
-- map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>', opts)
-- map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>', opts)
-- map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>', opts)
-- map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>', opts)
-- map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>', opts)
-- map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>', opts)
-- map('n', '<C-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<C-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<C-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
