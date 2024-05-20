require("starter")
vim.cmd[[colorscheme tokyonight]]

vim.api.nvim_set_hl(0, 'LineNr', { fg = '#ff8800', bg = 'NONE' })
vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#ff0000', bg = 'NONE' })

if vim.fn.has('clipboard') == 1 then
    vim.g.clipboard = {
        name = 'wl-clipboard',
        copy = {
            ['+'] = 'wl-copy',
            ['*'] = 'wl-copy',
        },
        paste = {
            ['+'] = 'wl-paste --no-newline',
            ['*'] = 'wl-paste --no-newline',
        },
        cache_enabled = 1,
    }
end

