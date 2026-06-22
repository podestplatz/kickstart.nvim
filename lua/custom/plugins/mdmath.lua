local enabled = false
if not enabled then
  return
end

-- nvim-treesitter is installed in init.lua.
vim.pack.add {
  'https://github.com/Thiago4532/mdmath.nvim',
}

require('mdmath').setup {
  foreground = 'Normal',
}

-- If the native build step fails after enabling this plugin, run:
--   :MdMath build
