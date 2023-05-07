vim.o.background = 'dark'
vim.cmd 'colorscheme theme'

-- Set leader to space
vim.g.mapleader = ' '

-- Line numbers
-- See :h number_relativenumber
vim.wo.number = true
vim.wo.relativenumber = true

-- Tab configuration
-- See :h tabstop for tab configuration stuff
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.bo.expandtab = true
vim.bo.autoindent = true
vim.o.smarttab = true
vim.o.hidden = true

-- Use Australian spelling
vim.bo.spelllang = 'en_au'

-- Use c ftplugin for .h files
vim.g.c_syntax_for_h = 1

-- Ruler shows the line and column number at the bottom right
vim.o.ruler = true

-- Always show the tab bar for consistency
vim.o.showtabline = 2

-- Make underscore separated words separate words
--vim.bo.iskeyword = vim.bo.iskeyword:gsub(",_","")
--vim.o.iskeyword = vim.o.iskeyword:gsub(",_","")

-- Dont wrap long lines
vim.wo.wrap = false

-- Dont highlight searches
vim.o.hlsearch = false

-- Always have the sign column so that code doesnt move around on error
vim.wo.signcolumn = "yes"

-- Colour column shows the text width of a file
vim.wo.colorcolumn = vim.wo.colorcolumn .. '+' .. 1
for i = 2,255 do vim.wo.colorcolumn = vim.wo.colorcolumn .. ',+' .. i end

-- Create the typst filetype!
vim.filetype.add({
    extension = {
        typ = 'typst',
    },
})
