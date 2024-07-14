--< Written by: NapoleanC
--< Variables:

--< Main:

return {
	--< Repository:
	"neovim/nvim-lspconfig",

	--< Dependencies:
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
	},

	--< Configuration:
	config = function()
		local LSPConfig = require("lspconfig")
		local LSPs = {
			"lua_ls",
			"clangd",
			"html",
			"tsserver",
			"bashls",
		}

		local Capabilities = require("cmp_nvim_lsp").default_capabilities()
		for _, LSP in ipairs(LSPs) do
			LSPConfig[LSP].setup({
				capabilities = Capabilities,
			})
		end

		vim.keymap.set("n", "<C-i>", ":lua vim.lsp.buf.implementation()<CR>", { silent = true })
		vim.keymap.set("n", "<C-r>", ":lua vim.lsp.buf.references()<CR>", { silent = true })
		vim.keymap.set("n", "<C-a>", ":lua vim.lsp.buf.code_action()<CR>", { silent = true })
		vim.keymap.set("n", "<C-h>", ":lua vim.lsp.buf.hover()<CR>", { silent = true })
	end,
}
