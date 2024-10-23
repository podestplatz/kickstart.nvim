return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    local handle = io.popen 'uname'
    local os_name = handle:read('*a'):gsub('\n', '')
    handle:close()

    local vimtex_view_method = os_name == 'Darwin' and 'skim' or 'zathura'

    vim.g.vimtex_quickfix_open_on_warning = 0
    vim.g.vimtex_quickfix_open_on_error = 1
    vim.g.vimtex_view_method = vimtex_view_method

    vim.g.vimtex_compiler_latexmk = {
      callback = 1,
      continuous = 1,
      executable = 'latexmk',
      options = {
        '-pdf',
        '-shell-escape',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }
  end,
}
