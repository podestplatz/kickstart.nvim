vim.pack.add {
  { src = 'https://github.com/folke/flash.nvim', name = 'flash' },
}

require('flash').setup { }

require('flash').toggle(true)

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>l', function()
  require('flash').jump()
end, { desc = 'Flash' })

vim.keymap.set({ 'n', 'x', 'o' }, '<leader>L', function()
  require('flash').treesitter()
end, { desc = 'Flash Treesitter' })

vim.keymap.set('o', '<leader>jr', function()
  require('flash').remote()
end, { desc = 'Remote Flash' })

vim.keymap.set({ 'o', 'x' }, '<leader>lt', function()
  require('flash').treesitter_search()
end, { desc = 'Treesitter Search' })

vim.keymap.set('c', '<C-s>', function()
  require('flash').toggle()
end, { desc = 'Toggle Flash Search' })
