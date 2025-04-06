return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    -- In this case, we create a function that lets us more easily define mappings specific
    -- for LSP related items. It sets the mode, buffer and description for us each time.
    local map = function(keys, func, desc, mode)
      mode = mode or 'n'
      vim.keymap.set(mode, keys, func, { desc = 'Harpoon: ' .. desc })
    end

    local harpoon = require 'harpoon'
    harpoon.setup {}

    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    map('<leader><leader>', function()
      toggle_telescope(harpoon:list())
    end, '[S]how the [H]arpoon list', 'n')
    map('<leader>q', function()
      harpoon:list():select(1)
    end, 'Select first file in list', 'n')
    map('<leader>w', function()
      harpoon:list():select(2)
    end, 'Select first file in list', 'n')
    map('<leader>e', function()
      harpoon:list():select(3)
    end, 'Select first file in list', 'n')
    map('<leader>h', function()
      harpoon:list():add()
    end, 'Add file to list', 'n')
    map('<leader>hc', function()
      harpoon:list():clear()
    end, '[C]lear all files from list', 'n')
  end,
}
