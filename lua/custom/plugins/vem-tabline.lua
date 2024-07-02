return {
  'pacha/vem-tabline',
  config = function()
    vim.keymap.set('n', '<leader>vn', '<Plug>vem_next_buffer-')
    vim.keymap.set('n', '<leader>vp', '<Plug>vem_prev_buffer-')
    vim.keymap.set('n', '<leader>vx', '<Plug>vem_delete_buffer-')
  end,
}
