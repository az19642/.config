require("nvchad.mappings")

local map = vim.keymap.set

-- Nvim command line
map("n", ";", ":", { desc = "Enter command mode" })

-- Telescope
map("n", "<leader>fn", function()
  require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config"), noremap = true })
end, { desc = "Search config files" })
map("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "Search keymaps", noremap = true })

-- VimTeX
-- map("n", "<leader>ll", "<cmd>VimtexCompile<CR>")
-- map("n", "<leader>le", "<cmd>VimtexErrors<CR>")
-- map("n", "<leader>lv", "<cmd>VimtexView<CR>")

-- Navigation
