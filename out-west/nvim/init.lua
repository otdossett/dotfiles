require("theprimeagen")

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

