local set = vim.keymap.set

set('n', '<leader>sf', ':find ')

-- This is something funny that I want to do here
-- Basically I want my p to paste from clipboard
-- and leader p to paste from last deletion
set('n', 'p', '"0p')
set('n', 'P', '"0P')
set('n', '<leader>p', 'p')
set('n', '<leader>P', 'P')
