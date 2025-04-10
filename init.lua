-- Initialize core plugin management
-- Load lazy.nvim plugin manager from config directory
require 'config.lazy'
-- Setup Mason package manager for LSP servers, linters, and formatters
require('mason').setup()

-- Basic keymapping and UI settings
-- Set space as the leader key for custom commands
vim.g.mapleader = ' '
-- Add shortcut to open Lazy plugin manager with <space>lz
vim.api.nvim_set_keymap('n', '<leader>lz', '<cmd>Lazy<cr>', { desc = 'Lazy' })
-- Enable special characters from Nerd Fonts
vim.g.have_nerd_font = true

-- System integration settings
-- Schedule clipboard setting to avoid startup issues
vim.schedule(function()
  -- Use system clipboard for all operations
  vim.opt.clipboard = 'unnamedplus'
end)

-- Editor visual feedback settings
-- Highlight the current cursor line for better visibility
vim.opt.cursorline = true

-- Scrolling behavior
-- Keep 5 lines visible above/below cursor while scrolling
vim.opt.scrolloff = 5

-- Indentation settings
-- Convert tabs to spaces
vim.opt.expandtab = true
-- Set indentation width to 4 spaces
vim.opt.shiftwidth = 4

-- UI elements configuration
-- Always show the sign column to prevent text shifting
vim.opt.signcolumn = 'yes'

-- Color settings
-- Enable 24-bit RGB color in the terminal if supported
if vim.fn.has 'termuicolors' == 1 then
  vim.opt.termuicolors = true
  print 'Using termuicolors'
end
-- Set the color scheme to Tokyo Night Storm theme
vim.cmd.colorscheme 'tokyonight-storm'

-- Code style guidelines
-- Display vertical line at column 120 for code length guidance
vim.opt.colorcolumn = '120'

-- Status line configuration
-- Use global status line (nvim 0.7+) for cleaner UI
vim.opt.laststatus = 3

-- Custom configurations
-- Load personal settings and customizations from avante module
require 'avante'

-- keybindings for easy tab management
vim.keymap.set('n', 'tt', '<cmd>tabnew<cr>', { desc = '[C]reate new tab' })
vim.keymap.set('n', 'tx', '<cmd>tabclose<cr>', { desc = 'Close tab' })
vim.keymap.set('n', 'tn', '<cmd>tabnext<cr>', { desc = 'Switch to [n]ext tab' })
vim.keymap.set('n', 'tp', '<cmd>tabprevious<cr>', { desc = 'Switch to [p]revious tab' })
