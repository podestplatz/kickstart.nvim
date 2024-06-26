-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'nvim-neotest/neotest-python',
    'mrcjkb/rustaceanvim',
  },
  config = function()
    require('neotest').setup {
      adapters = {
        require 'neotest-python' {
          args = { '-v' }, -- get more diff
        },
        require 'rustaceanvim.neotest',
      },
      output = {
        -- disable pop-up with failing test info (prefer virtual text)
        open_on_run = false,
      },
      quickfix = {
        enabled = false,
      },
    }
  end,
  keys = {
    { '<A-n>', '<CMD>Neotest summary toggle<CR>', desc = 'Toggle Neotest' },
    { '<leader>tn', '<CMD>Neotest run<CR>', desc = 'Test Nearest' },
    { '<leader>ts', '<CMD>Neotest stop<CR>', desc = 'Test Stop' },
    { '<leader>tf', '<CMD>Neotest run file<CR>', desc = 'Test File' },
    {
      '<leader>td',
      function()
        require('neotest').run.run { strategy = 'dap' }
      end,
      desc = 'Test Debug',
    },
  },
  cmd = 'Neotest',
}
