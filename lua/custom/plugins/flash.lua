vim.pack.add {
  { src = 'https://github.com/folke/flash.nvim', name = 'flash' },
}

require('flash').setup { }

require('flash').toggle(true)

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>h', function()
  require('flash').jump()
end, { desc = 'Flash' })

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>H', function()
  require('flash').treesitter()
end, { desc = 'Flash Treesitter' })

vim.keymap.set('o', '<leader>hr', function()
  require('flash').remote()
end, { desc = 'Remote Flash' })

vim.keymap.set({ 'o', 'x' }, '<leader>ht', function()
  require('flash').treesitter_search()
end, { desc = 'Treesitter Search' })

vim.keymap.set('c', '<C-s>', function()
  require('flash').toggle()
end, { desc = 'Toggle Flash Search' })
