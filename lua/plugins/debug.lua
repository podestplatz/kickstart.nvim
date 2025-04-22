-- Docs at https://github.com/mfussenegger/nvim-dap-python are useful.
return {
  -- keep-sorted start block=yes

  {
    'mfussenegger/nvim-dap',
    lazy = true,
    -- Copied from LazyVim/lua/lazyvim/plugins/extras/dap/core.lua and
    -- modified.
    keys = {
      {
        '<leader>db',
        function()
          require('dap').toggle_breakpoint()
        end,
        desc = 'Toggle Breakpoint',
      },

      {
        '<leader>dc',
        function()
          require('dap').continue()
        end,
        desc = 'Continue',
      },

      {
        '<leader>dC',
        function()
          require('dap').run_to_cursor()
        end,
        desc = 'Run to Cursor',
      },

      {
        '<leader>dT',
        function()
          require('dap').terminate()
        end,
        desc = 'Terminate',
      },
    },
  },
  {
    'rcarriga/nvim-dap-ui',
    keys = {
      {
        '<leader>du',
        function()
          require('dapui').toggle {}
        end,
        desc = 'Dap UI',
      },
    },
    config = true,
    opts = function()
      return {
        layouts = {
          {
            elements = {
              {
                id = 'stacks',
                size = 0.5,
              },
              {
                id = 'breakpoints',
                size = 0.5,
              },
            },
            position = 'left',
            size = 40,
          },
          {
            elements = {
              {
                id = 'repl',
                size = 0.5,
              },
            {
                                id="console",
                                size=0.5,
                            },
            },
            position = 'bottom',
            size = 10,
          },
        },
      }
    end,
    dependencies = {
      -- keep-sorted start block=yes
      {
        'jay-babu/mason-nvim-dap.nvim',
        ---@type MasonNvimDapSettings
        opts = {
          -- This line is essential to making automatic installation work
          -- :exploding-brain
          handlers = {},
          automatic_installation = {
            -- These will be configured by separate plugins.
            exclude = {
              'delve',
              'python',
            },
          },
          -- DAP servers: Mason will be invoked to install these if necessary.
          ensure_installed = {
            'bash',
            'codelldb',
            'php',
            'python',
          },
        },
        dependencies = {
          'mfussenegger/nvim-dap',
          'williamboman/mason.nvim',
        },
      },
      {
        'mfussenegger/nvim-dap-python',
        lazy = true,
        config = function()
          local python = 'python'
          require('dap-python').setup(python)
        end,
        -- Consider the mappings at
        -- https://github.com/mfussenegger/nvim-dap-python?tab=readme-ov-file#mappings
        dependencies = {
          'mfussenegger/nvim-dap',
        },
      },
      {
        'nvim-neotest/nvim-nio',
      },
      {
        'theHamsta/nvim-dap-virtual-text',
        config = true,
        dependencies = {
          'mfussenegger/nvim-dap',
        },
      },
      -- keep-sorted end
    },
  },
  -- keep-sorted end
}
