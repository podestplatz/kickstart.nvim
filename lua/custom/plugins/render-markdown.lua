local enabled = false
if not enabled then
  return
end

-- nvim-treesitter and mini.nvim are installed in init.lua.
vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
}

---@module 'render-markdown'
---@type render.md.UserConfig
require('render-markdown').setup {}
