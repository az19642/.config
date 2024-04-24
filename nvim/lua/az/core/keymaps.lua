local map = vim.keymap.set

-- Utility
map("n", ";", ":", { desc = "Enter command mode" })
map("i", "jk", "<esc>")
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "Copy all text in file" })

-- Clear search with <esc>
map({ "i", "n" }, "<esc>", "<cmd>noh<cr><esc>", { desc = "Escape and clear hlsearch" })

-- Windows
map("n", "<C-h>", "<C-w>h", { desc = "Move focus to the left window" })
map("n", "<C-l>", "<C-w>l", { desc = "Move focus to the right window" })
map("n", "<C-j>", "<C-w>j", { desc = "Move focus to the lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Move focus to the upper window" })
map("n", "<C-x>", "<C-w>q", { desc = "Move focus to the upper window" })

-- Tabs
-- map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Go to last tab" })
-- map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "Go to first tab" })
-- map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "Open new tab" })
-- map("n", "<leader><tab>x", "<cmd>tabclose<cr>", { desc = "Close current tab" })
-- map("n", "<leader><tab>]", "<cmd>tabnext<cr>", { desc = "Go to next tab" })
-- map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Go to previous tab" })

-- Buffers
map("n", "<S-tab>", "<cmd>bprevious<cr>", { desc = "Go to previous buffer" })
map("n", "<tab>", "<cmd>bnext<cr>", { desc = "Go to next buffer" })
map("n", "<leader>x", "<cmd>bdelete<cr>", { desc = "Close current buffer" })

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
