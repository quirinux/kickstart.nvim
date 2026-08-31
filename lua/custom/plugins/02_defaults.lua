-- Indentation: Use 4 spaces instead of tabs
vim.opt.expandtab = true   -- Convert tabs to spaces
vim.opt.tabstop = 4        -- 1 tab = 4 spaces
vim.opt.softtabstop = 4    -- Number of spaces inserted/removed when editing
vim.opt.shiftwidth = 4     -- Size of an indent level (<< and >>)

-- Line Wrapping: Disable line wrap
vim.opt.wrap = false

-- Normal mode: save file
vim.keymap.set('n', '<C-s>', '<cmd>w<CR>', { desc = 'Save file', silent = true })
-- Insert mode: exit to normal mode briefly, save, and return to insert mode
vim.keymap.set('i', '<C-s>', '<C-o>:w<CR>', { desc = 'Save file', silent = true })
-- Visual mode: save and return to normal mode
vim.keymap.set('v', '<C-s>', '<cmd>w<CR>', { desc = 'Save file', silent = true })

-- Automatically trim on save
local trailspace = require('mini.trailspace')
trailspace.setup()
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    trailspace.trim()
  end,
})


-- Select all in Normal mode
vim.keymap.set('n', '<C-a>', 'ggVG', { desc = 'Select all text', silent = true })
-- Select all in Insert mode (exits to normal mode, selects all)
vim.keymap.set('i', '<C-a>', '<Esc>ggVG', { desc = 'Select all text', silent = true })
-- Select all in Visual mode
vim.keymap.set('v', '<C-a>', '<Esc>ggVG', { desc = 'Select all text', silent = true })

-- better tabs shorcuts
vim.keymap.set('n', '<leader>c', '<cmd>bdelete<CR>', { desc = '[C]lose current buffer tab', silent = true })
vim.keymap.set('n', '<leader>[', '<cmd>bprevious<CR>', { desc = 'Prev buffer tab', silent = true })
vim.keymap.set('n', '<leader>]', '<cmd>bnext<CR>', { desc = 'Next buffer tab', silent = true })
vim.keymap.set('n', '<leader>w', '<cmd>set nowrap!<CR>', { desc = 'Word Wrap toggle', silent = true })
