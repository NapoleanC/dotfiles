--< Written by: Christopher Gholmieh
--< Variables:

--< Main:

return {
	--< Repository:
	"folke/which-key.nvim",

	--< Event:
	event = "VeryLazy",

	--< Keys:
	keys = {
		{
			"<leader>?",

			function()
				require("which-key").show({ global = false })
			end,

			desc = "Buffer Local Keymaps (which-key)",
		}
	}
}
