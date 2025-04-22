return {
	"rose-pine/neovim", name = "rose-pine",
    --"rebelot/kanagawa.nvim", name = "kanagawa",
	config = function()
        require("rose-pine").setup()
        vim.cmd.colorscheme "rose-pine"
		function colourThing(color)
			color = color-- or "rose-pine"
			vim.cmd.colorscheme(color)
			vim.api.nvim_set_hl(0, "Normal",      { bg = "none" })
			vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
		  end


    end
}
