local gitsigns = require("gitsigns")

gitsigns.setup({
	signs = {
		add = { text = "+" },
		change = { text = "~" },
		delete = { text = "_" },
		topdelete = { text = "‾" },
		changedelete = { text = "~" },
	},

	on_attach = function(bufnr)
		local opts = { buffer = bufnr }

		vim.keymap.set("n", "]h", gitsigns.next_hunk, opts)
		vim.keymap.set("n", "[h", gitsigns.prev_hunk, opts)

		vim.keymap.set("n", "<leader>hp", gitsigns.preview_hunk, opts)
		vim.keymap.set("n", "<leader>hs", gitsigns.stage_hunk, opts)
		vim.keymap.set("n", "<leader>hr", gitsigns.reset_hunk, opts)
		vim.keymap.set("n", "<leader>hb", gitsigns.blame_line, opts)
	end,
})
