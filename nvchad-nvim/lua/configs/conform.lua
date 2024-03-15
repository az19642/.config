local options = {
	notify_on_error = false,
	format_on_save = {
		lsp_fallback = false,
	},
	formatters_by_ft = {
		lua = { "stylua" },
		c = { "clang_format" },
		cpp = { "clang_format" },
	},
}

require("conform").setup(options)
