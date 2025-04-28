return {
  'pappasam/nvim-repl',
  opts = {
    filetype_commands = {
      julia = { cmd = 'julia --project=.', filetype = 'julia' },
    },
  },
  keys = {
    { '<Leader>rc', '<Plug>(ReplSendCell)', mode = 'n', desc = 'Send Repl Cell' },
    { '<Leader>rr', '<Plug>(ReplSendLine)', mode = 'n', desc = 'Send Repl Line' },
    { '<Leader>rr', '<Plug>(ReplSendVisual)', mode = 'x', desc = 'Send Repl Visual Selection' },
  },
}
