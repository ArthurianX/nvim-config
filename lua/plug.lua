-- [[ plug.lua ]]
return require('packer').startup(function(use)
  -- [[ Plugins Go Here ]]
  use { 'wbthomason/packer.nvim' }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {'danilamihailov/beacon.nvim'}
  use {'mhinz/vim-startify'}
  
  -- [[ DEV ]]
  use {'AckslD/nvim-neoclip.lua'}
  use {'kkharji/sqlite.lua', module = 'sqlite'}
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
  use {'norcalli/nvim-colorizer.lua'}  
  use {'Pocco81/auto-save.nvim'} 
  use {'EdenEast/nightfox.nvim'}
  use {'folke/which-key.nvim'}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use {'lewis6991/gitsigns.nvim'}
  use {
    'romgrk/barbar.nvim',
    requires = {'kyazdani42/nvim-web-devicons'}
  }
end)

