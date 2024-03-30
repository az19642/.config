require("nvchad.options")

-- add yours here!

-- whether or not to convert tabs to spaces (that did not come within the file)
vim.o.expandtab = true

-- how many spaces a tab character will be worth in the editor
vim.o.tabstop = 8

-- how many spaces a tab keypress produces
-- -1 means it produces <shiftwidth> spaces
vim.o.softtabstop = -1

-- how many spaces an indentation level is
-- automatically set by vimsleuth based on file in this config
vim.o.shfitwidth = 2

-- nvim-ufo
vim.o.foldcolumn = "1"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.opt.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
