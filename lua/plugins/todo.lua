return {
  'folke/todo-comments.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  event = 'VimEnter',
  keys = {
    {
      '<leader>st',
      '<cmd>TodoTelescope<cr>',
      mode = 'n',
      desc = 'Show all [T]ODOs',
    },
  },
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    signs = false,
  },
}
