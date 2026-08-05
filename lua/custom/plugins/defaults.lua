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
vim.api.nvim_create_autocmd('BufWritePre', {
  callback = function()
    trailspace.trim()
  end,
})
