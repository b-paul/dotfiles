-- Plugins list

vim.cmd 'packadd packer.nvim'

--vim._update_package_paths()

require 'packer' .startup(function()
    use 'wbthomason/packer.nvim'

    use 'gruvbox-community/gruvbox'

    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-dispatch'

    use 'rktjmp/lush.nvim'

    use '~/.config/nvim/plugins/theme'

    use { 'norcalli/nvim-colorizer.lua', config = function() require 'plugins/nvim_colorizer' end }

    use 'mhinz/vim-startify'

    use 'mattn/calendar-vim'

    use { 'neovim/nvim-lspconfig', config = function() require 'plugins/lsp' end }

    use { 'hrsh7th/nvim-compe', config = function() require 'plugins/compe' end }
    use { 'L3MON4D3/LuaSnip', config = function() require 'plugins/luasnip' end }

    use 'tweekmonster/startuptime.vim'

    use { 'lervag/vimtex', config = function() require 'plugins/vimtex' end }

    use 'fidian/hexmode'

    --use { 'famiu/feline.nvim', config = require 'plugins/feline' end }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require 'plugins/treesitter' end
    }
    -- use 'p00f/nvim-ts-rainbow'
    -- https://github.com/nvim-treesitter/nvim-treesitter-refactor ?

    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = function() require 'plugins/telescope' end
    }
    use 'nvim-telescope/telescope-bibtex.nvim'
    use 'nvim-telescope/telescope-cheat.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-packer.nvim'
    use 'nvim-telescope/telescope-snippets.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
end)
