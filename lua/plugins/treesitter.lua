return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",

        config = function()
            require("nvim-treesitter.config").setup({
                ensure_installed = {
                    "lua",
                    "vim",
                    "vimdoc",
                    "query",
                    "cpp",
                    "c",
                    "rust",
                    "javascript",
                    "typescript",
                    "python",
                    "json",
                    "markdown",
                    "c_sharp"
                },

                auto_install = true,

               highlight = {
                    enable = true,
                },

                indent = {
                    enable = true,
                },
            })
        end,
    },
}
