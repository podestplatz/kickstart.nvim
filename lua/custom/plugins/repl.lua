return {
  'milanglacier/yarepl.nvim',
  config = true,
  keys = {
    {
      mode = { 'n' },
      '<Leader>rc',
      '<cmd>REPLStart<cr>',
      desc = '[R]EPL create a new one',
    },
    {
      mode = { 'n' },
      '<Leader>rr',
      '<cmd>REPLSendLine<cr>',
      desc = '[R]EPL send line',
    },
    {
      mode = { 'v' },
      '<Leader>rr',
      '<cmd>REPLSendVisual<cr>',
      desc = '[R]EPL send visual',
    },
    {
      mode = { 'n' },
      '<Leader>rw',
      '<cmd>REPLClose<cr>',
      desc = '[R]EPL close',
    },
    {
      mode = { 'n' },
      '<Leader>rh',
      '<cmd>REPLHide<cr>',
      desc = '[R]EPL [h]ide',
    },
    {
      mode = { 'n' },
      '<Leader>rf',
      '<cmd>REPLFocus<cr>',
      desc = '[R]EPL [f]ocus',
    },
  },
}
