--< Written by: Christopher Gholmieh
--< Variables:

--< Main:

return {
	--< Repository:
	"nvim-neo-tree/neo-tree.nvim",

	--< Branch:
	branch = "v3.x",

	--< Dependencies:
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},

	--< Configuration:
	config = function()
		vim.keymap.set("n", "<leader>fs", ":Neotree<CR>", { silent = true })
	end
}
