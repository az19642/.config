-- NOTE: shiftwidth and expandtab are overridden by vim-sleuth by default.

-- Whether or not to expand a tab character into spaces. Can still write a tab character with C-V<Tab>
-- vim.o.expandtab = true

-- How many spaces a tab character is worth in the editor. Default is 8.
vim.o.tabstop = 8

-- Number of spaces a tab/backspace keypress will produce, 0 means it produces <tabstop> spaces.
-- Note that if expandtab is false, the editor will always try to convert the spaces produced by a tab/backspace keypress into as many tabs as it can. The leftover spaces remain as spaces. -1 means it produces <shiftwidth> spaces.
vim.o.softtabstop = -1

-- How many spaces an indentation level is. 0 means it is <tabstop> spaces.
-- vim.o.shiftwidth = 0

vim.opt.textwidth = 79
vim.opt.formatoptions:remove("l")
vim.opt.formatoptions:append("a")

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = true
-- You can also add relative line numbers, for help with jumping.
--  Experiment for yourself to see if you like it!
-- vim.opt.relativenumber = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in status line
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- vim: ts=2 sts=2 sw=2 et
