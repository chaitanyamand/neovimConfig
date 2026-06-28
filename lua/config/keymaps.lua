vim.g.mapleader = " "

local keymap = vim.keymap
local gs = require("gitsigns")

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
keymap.set("n", "<leader>hp", gs.preview_hunk)
keymap.set("n", "<leader>hs", gs.stage_hunk)
keymap.set("n", "<leader>hr", gs.reset_hunk)
keymap.set("n", "<leader>hb", gs.blame_line)
keymap.set("n", "[h", gs.prev_hunk)
keymap.set("n", "]h", gs.next_hunk)
keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
