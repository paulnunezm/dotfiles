return {
    { "ellisonleao/gruvbox.nvim" },
    { "rose-pine/neovim", name = "rose-pine" },
    { "rebelot/kanagawa.nvim" },
    {
        "folke/tokyonight.nvim",
    },
    { -- Configure LazyVim to load the theme
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "tokyonight-night",
        },
    },
}
