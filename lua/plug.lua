-- [[ plug.lua ]]
return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
use {'Mofiqul/dracula.nvim'}
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use {'danilamihailov/beacon.nvim'}
use {'mhinz/vim-startify'}
-- [[ DEV ]]
use {
    'nvim-telescope/telescope.nvim',                 -- fuzzy finder
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 'Yggdroot/indentLine' }                      -- see indentation
  use { 'tpope/vim-fugitive' }                       -- git integration
  use { 'junegunn/gv.vim' }                          -- commit history
  use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
  use { 'neoclide/coc.nvim', branch = 'release' }
  use {'pangloss/vim-javascript'}
  use {'leafgarland/typescript-vim'}
  use {'peitalin/vim-jsx-typescript'}
  use {'styled-components/vim-styled-components', branch = 'main' }
  use {'jparise/vim-graphql'}
  use {'nvim-treesitter/nvim-treesitter'}
  use {'tpope/vim-surround'}
  
end)

