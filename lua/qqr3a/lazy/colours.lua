function colourThing(color)
    color = color -- or "rose-pine"
    vim.cmd.colorscheme(color)
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    "rose-pine/neovim",
    name = "rose-pine",
    --"rebelot/kanagawa.nvim", name = "kanagawa",
    config = function()
        require("rose-pine").setup({
            variant = "moon",
        })
        vim.cmd.colorscheme("rose-pine")
        colourThing()
    end,
}
