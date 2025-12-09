return {
  'pacha/vem-tabline',
  dependencies = {
    'ryanoasis/vim-devicons',
  },
  config = function()
    vim.keymap.set('n', 'gt', '<Plug>vem_next_buffer-')
    vim.keymap.set('n', 'gT', '<Plug>vem_prev_buffer-')
    vim.keymap.set('n', '<leader>w', '<Plug>vem_delete_buffer-')
  end,
}
