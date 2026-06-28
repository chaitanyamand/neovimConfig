return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()

            vim.keymap.set("n", "<leader>cm", "<cmd>Mason<CR>", {
                desc = "Open Mason",
            })
        end,
    },
}
