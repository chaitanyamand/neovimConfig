local wk = require("which-key")

wk.setup({})
wk.add({
	{ "<leader>f", group = "Find" },
	{ "<leader>g", group = "Git" },
	{ "<leader>h", group = "Git Hunk" },
	{ "<leader>l", group = "LSP" },
	{ "<leader>t", group = "Terminal" },
})
