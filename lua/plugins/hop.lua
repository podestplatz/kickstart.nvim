return {
  'smoka7/hop.nvim',
  version = '*',
  opts = {
    keys = 'etovxqpdygfblzhckisuran',
    quit_key = '<SPC>',
  },
  keys = {
    {
      '<leader>jj',
      '<cmd>HopChar1<cr>',
      desc = 'Hop to a Character',
    },
    {
      '<leader>jl',
      '<cmd>HopLine<cr>',
      desc = 'Hop to [L]ine',
    },
    {
      '<leader>jw',
      '<cmd>HopWordCurrentLine<cr>',
      desc = 'Hop to [W]ord',
    },
  },
}
