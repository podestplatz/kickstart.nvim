-- Omarchy theme integration: syncs neovim colorscheme with the active omarchy theme.
-- Installs all colorscheme plugins used by omarchy themes and watches for runtime changes.

local home = vim.fn.expand '~'
local theme_neovim_lua = home .. '/.config/omarchy/current/theme/neovim.lua'
local theme_name_file = home .. '/.config/omarchy/current/theme.name'

local function get_colorscheme()
  local f = io.open(theme_neovim_lua, 'r')
  if not f then
    return nil
  end
  local content = f:read '*a'
  f:close()
  return content:match 'colorscheme%s*=%s*"([^"]+)"'
end

local function apply_omarchy_theme()
  local colorscheme = get_colorscheme()
  if colorscheme then
    pcall(vim.cmd.colorscheme, colorscheme)
  end
end

local function watch_theme()
  if vim.fn.filereadable(theme_name_file) == 0 then
    return
  end

  local w = vim.uv.new_fs_event()
  if not w then
    return
  end

  local function on_change(err)
    if not err then
      vim.schedule(function()
        vim.defer_fn(apply_omarchy_theme, 300)
      end)
    end
    pcall(function()
      w:stop()
      w:start(theme_name_file, {}, on_change)
    end)
  end

  w:start(theme_name_file, {}, on_change)
end

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    apply_omarchy_theme()
    watch_theme()
  end,
  once = true,
})

return {
  { 'catppuccin/nvim', name = 'catppuccin' },
  { 'bjarneo/ethereal.nvim' },
  { 'neanias/everforest-nvim' },
  { 'kepano/flexoki-neovim' },
  { 'ellisonleao/gruvbox.nvim' },
  { 'bjarneo/hackerman.nvim', dependencies = { 'bjarneo/aether.nvim' } },
  { 'rebelot/kanagawa.nvim' },
  { 'omacom-io/lumon.nvim' },
  { 'tahayvr/matteblack.nvim' },
  { 'OldJobobo/miasma.nvim' },
  { 'EdenEast/nightfox.nvim' },
  { 'ribru17/bamboo.nvim' },
  { 'OldJobobo/retro-82.nvim' },
  { 'gthelding/monokai-pro.nvim' },
  { 'rose-pine/neovim', name = 'rose-pine' },
  { 'folke/tokyonight.nvim' },
  { 'bjarneo/vantablack.nvim' },
  { 'bjarneo/white.nvim' },
}
