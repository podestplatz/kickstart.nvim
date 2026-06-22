vim.pack.add {
  'https://github.com/milanglacier/yarepl.nvim',
}

require('yarepl').setup {}

vim.keymap.set('n', '<Leader>rc', '<cmd>REPLStart<cr>', { desc = '[R]EPL create a new one' })
vim.keymap.set('n', '<Leader>rr', '<cmd>REPLSendLine<cr>', { desc = '[R]EPL send line' })
vim.keymap.set('v', '<Leader>rr', '<cmd>REPLSendVisual<cr>', { desc = '[R]EPL send visual' })
vim.keymap.set('n', '<Leader>rw', '<cmd>REPLClose<cr>', { desc = '[R]EPL close' })
vim.keymap.set('n', '<Leader>rh', '<cmd>REPLHide<cr>', { desc = '[R]EPL [h]ide' })
vim.keymap.set('n', '<Leader>rf', '<cmd>REPLFocus<cr>', { desc = '[R]EPL [f]ocus' })
