return {
    {
        "folke/tokyonight.nvim",
        config = function()
            require("tokyonight").setup({
                {
                    style = "storm",
                    transparent = true,

                -- your configuration comes here
                -- or leave it empty to use the default settings
                },
            })
        end
    },
}
