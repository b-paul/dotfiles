-- Plugins list

vim.cmd 'packadd packer.nvim'

--vim._update_package_paths()

require 'packer' .startup(function()
    use 'wbthomason/packer.nvim'

    use 'gruvbox-community/gruvbox'

    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-dispatch'

    use '~/.config/nvim/plugins/theme'

    use { 'norcalli/nvim-colorizer.lua', config = require 'plugins/nvim_colorizer' }

    use 'mhinz/vim-startify'

    use 'mattn/calendar-vim'

    use { 'neovim/nvim-lspconfig', config = require 'plugins/lsp' }

    use { 'hrsh7th/nvim-compe', config = require 'plugins/compe' }
    use { 'L3MON4D3/LuaSnip', config = require 'plugins/luasnip' }

    use 'tweekmonster/startuptime.vim'

    use { 'lervag/vimtex', config = require 'plugins/vimtex' }

    use 'fidian/hexmode'

    use 'rktjmp/lush.nvim'

    --use { 'famiu/feline.nvim', config = require 'plugins/feline' }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = require 'plugins/treesitter'
    }
    use 'p00f/nvim-ts-rainbow'
    -- https://github.com/nvim-treesitter/nvim-treesitter-refactor ?

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = require 'plugins/telescope'
    }
    use 'nvim-telescope/telescope-bibtex.nvim'
    use 'nvim-telescope/telescope-cheat.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-packer.nvim'
    use 'nvim-telescope/telescope-snippets.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
end)
