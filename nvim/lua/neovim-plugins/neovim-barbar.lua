--< Written by: Christopher Gholmieh
--< Variables:

--< Main:

return {
	--< Repository:
	"romgrk/barbar.nvim",

	--< Dependencies:
	dependencies = {
		"lewis6991/gitsigns.nvim",
	},

	--< Initialization:
	init = function()
		vim.g.barbar_auto_setup = false
	end,

	--< Versions:
	version = "^1.0.0",

	--< Configuration:
	config = function()
		require("barbar").setup({})

		vim.keymap.set("n", "<leader>1", ":BufferNext<CR>", { silent = true })
		vim.keymap.set("n", "<leader>2", ":BufferPrevious<CR>", { silent = true })
	end
}
