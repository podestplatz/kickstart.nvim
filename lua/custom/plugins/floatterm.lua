return {
  {
    'voldikss/vim-floaterm',
    config = function()
      -- Set the keymap for FloatermToggle command
      vim.api.nvim_set_keymap('n', '<F1>', ':FloatermToggle<CR>', { noremap = true, silent = true })
    end,
    keys = {
      { '<leader>lg', '<cmd>FloatermNew! --name=lazygit lazygit<CR>', desc = 'Open new lazygit terminal' },
      { '<leader>ft', '<cmd>FloatermToggle<CR>', desc = 'Toggle the current floatterm window' },
      { '<leader>fn', '<cmd>FloatermNext<CR>', desc = 'Switch to next floaterm window' },
      { '<leader>fp', '<cmd>FloatermPrev<CR>', desc = 'Switch to previous floaterm window' },
      { '<leader>ff', '<cmd>FloatermNew<CR>', desc = 'Open new floaterm window.' },
    },
  },
}
