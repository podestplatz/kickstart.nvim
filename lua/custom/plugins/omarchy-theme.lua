-- Omarchy theme integration: syncs neovim colorscheme with the active omarchy theme.
-- Installs all colorscheme plugins used by omarchy themes and watches for runtime changes.

vim.pack.add {
  { src = 'https://github.com/catppuccin/nvim', name = 'catppuccin' },
  'https://github.com/bjarneo/ethereal.nvim',
  'https://github.com/neanias/everforest-nvim',
  { src = 'https://github.com/kepano/flexoki-neovim', name = 'flexoki' },
  'https://github.com/ellisonleao/gruvbox.nvim',
  'https://github.com/bjarneo/aether.nvim',
  'https://github.com/bjarneo/hackerman.nvim',
  'https://github.com/rebelot/kanagawa.nvim',
  'https://github.com/omacom-io/lumon.nvim',
  'https://github.com/tahayvr/matteblack.nvim',
  'https://github.com/OldJobobo/miasma.nvim',
  'https://github.com/EdenEast/nightfox.nvim',
  'https://github.com/ribru17/bamboo.nvim',
  'https://github.com/OldJobobo/retro-82.nvim',
  'https://github.com/gthelding/monokai-pro.nvim',
  { src = 'https://github.com/rose-pine/neovim', name = 'rose-pine' },
  'https://github.com/folke/tokyonight.nvim',
  'https://github.com/bjarneo/vantablack.nvim',
  'https://github.com/bjarneo/white.nvim',
}

local home = vim.fn.expand '~'
local theme_neovim_lua = home .. '/.config/omarchy/current/theme/neovim.lua'
local theme_name_file = home .. '/.config/omarchy/current/theme.name'
local theme_watcher

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

  theme_watcher = vim.uv.new_fs_event()
  if not theme_watcher then
    return
  end

  local function on_change(err)
    if not err then
      vim.schedule(function()
        vim.defer_fn(apply_omarchy_theme, 300)
      end)
    end
    pcall(function()
      theme_watcher:stop()
      theme_watcher:start(theme_name_file, {}, on_change)
    end)
  end

  theme_watcher:start(theme_name_file, {}, on_change)
end

vim.api.nvim_create_autocmd('VimEnter', {
  callback = function()
    apply_omarchy_theme()
    watch_theme()
  end,
  once = true,
})
