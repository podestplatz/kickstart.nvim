return {
  'pappasam/nvim-repl',
  keys = {
    { '<Leader>rc', '<Plug>(ReplSendCell)', mode = 'n', desc = 'Send Repl Cell' },
    { '<Leader>rr', '<Plug>(ReplSendLine)', mode = 'n', desc = 'Send Repl Line' },
    { '<Leader>rr', '<Plug>(ReplSendVisual)', mode = 'x', desc = 'Send Repl Visual Selection' },
  },
}
