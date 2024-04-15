local opts = {
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = false,
    -- },
    -- lsp_fallback = false,
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
}

return opts
