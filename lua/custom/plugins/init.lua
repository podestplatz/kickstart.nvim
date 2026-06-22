-- Custom vim.pack plugins live in this directory.
--
-- Each sibling module should call `vim.pack.add { ... }` with native vim.pack
-- specs, then do its setup/keymaps directly.

local plugins_dir = vim.fs.joinpath(vim.fn.stdpath 'config', 'lua', 'custom', 'plugins')
local modules = {}

for file_name, fs_type in vim.fs.dir(plugins_dir, { follow = true }) do
  if (fs_type == 'file' or fs_type == 'link') and file_name:match '%.lua$' and file_name ~= 'init.lua' then
    modules[#modules + 1] = file_name:gsub('%.lua$', '')
  end
end

table.sort(modules)

for _, module in ipairs(modules) do
  require('custom.plugins.' .. module)
end
