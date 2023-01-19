local status, telescope = pcall(require, 'telescope')

if (not status) then return end

telescope.setup {
        defaults = {
                preview = false,
        },
        pickers = {
                find_files = {
                        theme = "dropdown"
                },
                live_grep = {
                        theme = "dropdown"
                },
                buffers = {
                        theme = "dropdown"
                }
        }
}

local builtins = require('telescope.builtin');
local set = vim.keymap.set


set('n', '<leader>ff', builtins.find_files, {});
set('n', '<leader>ob', builtins.buffers, {});
set('n', '<leader>lg', builtins.live_grep, {});
