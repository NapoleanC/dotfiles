--< Written by: Christopher Gholmieh
--< Variables:

--< Main:

return {
	--< Repository:
	"catppuccin/nvim",

	--< Configuration:
	config = function()
		require("catppuccin").setup({
			flavour = "mocha"
		})

		vim.cmd([[colorscheme catppuccin-mocha]])
	end
}
