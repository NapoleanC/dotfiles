--< Written by: Christopher Gholmieh
--< Variables:

return {
	--< Repository:
	"nvim-treesitter/nvim-treesitter",

	--< Dependencies:
	dependencies = {
		"nvim-treesitter/nvim-treesitter-refactor",
	},

	--< Configuration:
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,

			highlight = {
				enable = true,

				additional_vim_regex_highlighting = true,
			},

			refactor = {
				highlight_definitions = {
					enable = true,
				},

				smart_rename = {
					enable = true,

					keymaps = {
						smart_rename = "<leader>rn",
					},
				},
			},
		})
	end,
}
