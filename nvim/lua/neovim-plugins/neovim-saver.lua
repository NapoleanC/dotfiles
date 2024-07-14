--< Written by: Christopher Gholmieh
--< Variables:

--< Main:
return {
	--< Repository:
	"https://git.sr.ht/~nedia/auto-save.nvim",

	--< Event:
	event = {"BufReadPre"},

	--< Options:
	opts = {
		events = {"InsertLeave", "BufLeave"},

		silent = false,
		exclude_ft = {"neo-tree"},
  	},
}
