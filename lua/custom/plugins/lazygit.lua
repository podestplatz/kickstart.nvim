local enabled = false
if not enabled then
  return
end

vim.pack.add {
  'https://github.com/nvim-lua/plenary.nvim',
  { src = 'https://github.com/kdheepak/lazygit.nvim', version = 'v0.56.0' },
}

vim.g.lazygit_floating_window_use_plenary = 0

vim.keymap.set('n', '<leader>g', '<cmd>LazyGit<cr>', { desc = 'LazyGit' })
