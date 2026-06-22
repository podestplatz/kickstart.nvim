vim.pack.add {
  'https://github.com/ryanoasis/vim-devicons',
  'https://github.com/pacha/vem-tabline',
}

vim.keymap.set('n', 'gt', '<Plug>vem_next_buffer-')
vim.keymap.set('n', 'gT', '<Plug>vem_prev_buffer-')
vim.keymap.set('n', '<leader>w', '<Plug>vem_delete_buffer-')
