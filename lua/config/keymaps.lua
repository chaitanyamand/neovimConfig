vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "<leader>x", ":x<CR>")
keymap.set("n", "<leader>ya", ":%y<CR>", { desc = "Yank entire file" })
keymap.set("n", "<leader>f", function()
	require("conform").format({
		async = true,
		lsp_fallback = true,
	})
end)
keymap.set("n", "<leader>re", ":Neotree reveal<CR>", {
	desc = "Reveal current file",
})
