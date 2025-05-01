return {
  'smoka7/hop.nvim',
  version = '*',
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
    quit_key = '<SPC>',
    jump_on_sole_occurence = true,
  },
  keys = {
    {
      '<leader>jj',
      '<cmd>HopChar1<cr>',
      desc = 'Hop to a Character',
      mode = { 'n', 'v' },
    },
    {
      '<leader>jl',
      '<cmd>HopLine<cr>',
      desc = 'Hop to [L]ine',
      mode = { 'n', 'v' },
    },
    {
      '<leader>jw',
      '<cmd>HopWordCurrentLine<cr>',
      desc = 'Hop to [W]ord',
      mode = { 'n', 'v' },
    },
  },
}
