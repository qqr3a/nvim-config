return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	"nvim-treesitter/nvim-treesitter-textobjects",
	config = function()
		require("nvim-treesitter.configs").setup({
			ensure_installed = { "python", "lua", "json", "html", "bash" },
			auto_install = true,
			indent = {
				enable = true,
			},
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			textobjects = { enable = true },
		})

		local treesitter_parser_config = require("nvim-treesitter.parsers").get_parser_configs()
		treesitter_parser_config.templ = {
			install_info = {
				url = "https://github.com/vrischmann/tree-sitter-templ.git",
				files = { "src/parser.c", "src/scanner.c" },
				branch = "master",
			},
		}
		vim.treesitter.language.register("templ", "templ")
	end,
}
