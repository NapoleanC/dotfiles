--< Written by: Christopher Gholmieh
--< Variables:

--< Main:

return {
	--< Repository:
	"nvim-telescope/telescope.nvim",

	--< Configuration:
	config = function()
		local Builtin = require("telescope.builtin")

		vim.keymap.set("n", "<leader>ff", Builtin.find_files, {})
		vim.keymap.set("n", "<leader>fg", Builtin.live_grep, {})
	end
}
