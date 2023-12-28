-- Plugins list

vim.cmd 'packadd packer.nvim'

--vim._update_package_paths()

-- TODO
-- modulize more
-- e.g. rust-tools should only initialize for rust files

require 'packer'.startup(function()
    use 'wbthomason/packer.nvim'

    use 'gruvbox-community/gruvbox'

    use 'tpope/vim-fugitive'
    use 'tpope/vim-surround'
    use 'tpope/vim-dispatch'

    use 'rktjmp/lush.nvim'

    use '~/.config/nvim/plugins/theme'

    use 'norcalli/nvim-colorizer.lua'

    use 'mhinz/vim-startify'

    use 'mattn/calendar-vim'

    use 'jbyuki/nabla.nvim'

    use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }

    -- This is cool
    --use 'vimpostor/vim-tpipeline'

    use 'nvim-orgmode/orgmode'

    use 'mickael-menu/zk-nvim'

    use 'neovim/nvim-lspconfig'
    use 'simrat39/rust-tools.nvim'
    use 'mrcjkb/haskell-tools.nvim'

    use 'L3MON4D3/LuaSnip'
    use 'hrsh7th/nvim-cmp'
    use 'saadparwaiz1/cmp_luasnip'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'hrsh7th/cmp-nvim-lua'
    use 'hrsh7th/cmp-calc'

    use 'lukas-reineke/cmp-rg'
    use 'f3fora/cmp-spell'
    use 'kdheepak/cmp-latex-symbols'


    use 'tweekmonster/startuptime.vim'

    use 'lervag/vimtex'

    use 'fidian/hexmode'

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
    }
    -- https://github.com/nvim-treesitter/nvim-treesitter-refactor ?

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use 'nvim-telescope/telescope-bibtex.nvim'
    use 'nvim-telescope/telescope-cheat.nvim'
    use 'nvim-telescope/telescope-frecency.nvim'
    use 'nvim-telescope/telescope-fzy-native.nvim'
    use 'nvim-telescope/telescope-packer.nvim'
    use 'nvim-telescope/telescope-snippets.nvim'
    use 'nvim-telescope/telescope-symbols.nvim'
    use 'nvim-telescope/telescope-ui-select.nvim'
end)
