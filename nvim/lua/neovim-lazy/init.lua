--< Written by: Christopher Gholmieh
--< Variables:

local Leader = " "

--< Functions:

local function Bootstrap()
	local LazyPath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
	if not (vim.uv or vim.loop).fs_stat(LazyPath) then
		vim.fn.system({
			"git", "clone",
			"--filter=blob:none",
			"--branch=stable",
			"https://github.com/folke/lazy.nvim.git",
			LazyPath
		})
	end

	vim.opt.rtp:prepend(LazyPath)
end

--< Main:

Bootstrap()

vim.g.mapleader = Leader

require("lazy").setup("neovim-plugins")
