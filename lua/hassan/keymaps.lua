vim.g.mapleader = ' '
local s = vim.keymap.set

s('n', '<leader>sf', ':find ')
s('v', 'J', [[:move '>+1<CR>gv=gv]])
s('v', 'K', [[:move '<-2<CR>gv=gv]])

s('n', 'J', 'mzJ`z')
s('n', '<C-d>', '<C-d>zz')
s('n', '<C-u>', '<C-u>zz')
s('n', 'n', 'nzzzv')
s('n', 'N', 'Nzzzv')

s('n', 'Q', '<nop>')
s('n', '<leader>fb', vim.lsp.buf.format)

s('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<left><left><left>]])

s('n', '<leader>fe', vim.cmd.Ex)
