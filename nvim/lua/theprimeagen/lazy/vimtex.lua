return {
  'lervag/vimtex',
  config = function()
    -- LaTeX template for new files
    vim.api.nvim_create_autocmd('BufNewFile', {
      pattern = '*.tex',
      command = '0r ~/.config/nvim/templates/latex_template.tex',
    })

    -- LaTeX keybindings in insert mode
    vim.api.nvim_create_autocmd('FileType', {
      pattern = 'tex',
      callback = function()
        -- Function to insert align block and place cursor in the middle
        local function insert_align_block()
          local align_block = "\\begin{align}\n\t&\n\\end{align}\n"
          local row, col = unpack(vim.api.nvim_win_get_cursor(0))
          vim.api.nvim_put({align_block}, 'c', true, true)
          vim.api.nvim_win_set_cursor(0, {row + 1, col + 8})
        end

        -- Function to insert equation block and place cursor in the middle
        local function insert_equation_block()
          local equation_block = "\\begin{equation}\n\t\n\\end{equation}\n"
          local row, col = unpack(vim.api.nvim_win_get_cursor(0))
          vim.api.nvim_put({equation_block}, 'c', true, true)
          vim.api.nvim_win_set_cursor(0, {row + 1, col + 1})
        end

        vim.api.nvim_buf_set_keymap(0, 'i', '<C-a>', '', {
          noremap = true,
          silent = true,
          callback = insert_align_block,
        })
        vim.api.nvim_buf_set_keymap(0, 'i', '<C-e>', '', {
          noremap = true,
          silent = true,
          callback = insert_equation_block,
        })
      end,
    })

    -- VimTeX configuration
    vim.g.vimtex_view_method = 'zathura'  -- Replace 'zathura' with your preferred PDF viewer
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      build_dir = 'build',
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

    -- Compile on write
    vim.api.nvim_create_autocmd('BufWritePost', {
      pattern = '*.tex',
      command = 'VimtexCompile',
    })
  end,
}

