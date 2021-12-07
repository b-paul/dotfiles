-- latex ftplugin

-- Set the text width to 79 characters
vim.bo.textwidth = 79

-- Enable spell checking
vim.wo.spell = true

-- Bind <leader>+c to ci{ the last {} on the current line
-- e.g. <leader>+c would make \command{ahesifuhisg} \command{} with insert
vim.api.nvim_set_keymap('n', '<leader>c', '$bci{',
                        { noremap = true, silent = true })

-- Bind <leader>+d to duplicate the current line down
vim.api.nvim_set_keymap('n', '<leader>d', 'yyp',
                        { noremap = true, silent = true })

--vim.api.nvim_eval("TexNewMathZone('E','align',1)")
--vim.api.nvim_eval("TexNewMathZone('E','multline',1)")

-- Vimtex stuff
vim.g.vimtex_format_enabled = 1
vim.g.vimtex_syntax_nospell_comments = 1

-- Get rid of calendar bindings so that <leader>c is usable
vim.api.nvim_del_keymap("n", " cal")
vim.api.nvim_del_keymap("n", " caL")
