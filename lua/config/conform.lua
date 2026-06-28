local conform = require("conform")

conform.setup({
    formatters_by_ft = {
        lua = { "stylua" },

        javascript = { "prettier" },
        javascriptreact = { "prettier" },

        typescript = { "prettier" },
        typescriptreact = { "prettier" },

        json = { "prettier" },

        css = { "prettier" },

        html = { "prettier" },

        markdown = { "prettier" },

        cpp = { "clang-format" },
        c = { "clang-format" },

        rust = { "rustfmt" },
    },

    format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
    },
})
