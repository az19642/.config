require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "Enter command mode" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

map("n", "<leader>fn", function()
  require("telescope.builtin").find_files({ cwd = vim.fn.stdpath("config") })
end, { desc = "Search config files" })
map("n", "<leader>fk", require("telescope.builtin").keymaps, { desc = "Search keymaps" })

map("n", "j", "gj")
map("n", "k", "gk")

-- nvim-ufo
-- map("n", "zR", require("ufo").openAllFolds)

