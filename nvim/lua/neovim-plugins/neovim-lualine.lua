--< Written by: Christopher Gholmieh
--< Variables:

--< Main:
return {
	--< Repository:
	"nvim-lualine/lualine.nvim",

	--< Dependencies:
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	--< Configuration:
	config = function()
		require("lualine").setup({
			theme = "catppuccin",
		})
	end,
}
