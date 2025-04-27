function colourThing(color)
	color = color -- or "rose-pine"
	vim.cmd.colorscheme(color)
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
	{
		{
			{ "rose-pine/neovim", name = "rose-pine", cmd = "colorscheme" },
			{ "morhetz/gruvbox", name = "gruvbox", cmd = "colorscheme" },
			{ "catppuccin/nvim", name = "catppuccin", cmd = "colorscheme" },
			{ "folke/tokyonight.nvim", name = "tokyonight", cmd = "colorscheme" },
		},
	},
	{
		config = function()
			require("rose-pine").setup({
				variant = "moon",
			})
			vim.cmd.colorscheme("rose-pine")
		end,
	},
}
