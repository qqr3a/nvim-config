return {
    { "rose-pine/neovim",      name = "rose-pine" },
    { "morhetz/gruvbox",       name = "gruvbox" },
    { "catppuccin/nvim",       name = "catppuccin" },
    { "folke/tokyonight.nvim", name = "tokyonight" },
    config = function()
        require("rose-pine").setup({
            variant = "moon",
        })
    end,
}
