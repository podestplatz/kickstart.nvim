require 'config.lazy'
require('mason').setup()

vim.g.mapleader = ' '
vim.api.nvim_set_keymap('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = 'Lazy' })
vim.g.have_nerd_font = true

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 5

vim.opt.expandtab = true
vim.opt.shiftwidth = 4
