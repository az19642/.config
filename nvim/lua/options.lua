require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!
--
local opt = vim.opt
local o = vim.o
local g = vim.g

-- whether or not to convert tabs to spaces (that did not come within the file)
o.expandtab = true

-- how many spaces a tab character will be worth in the editor
o.tabstop = 8

-- how many spaces a tab keypress produces
-- -1 means it produces <shiftwidth> spaces
o.softtabstop = -1

-- how many spaces an indentation level is
-- automatically set by vimsleuth based on file in this config
-- o.shiftwidth = 2

o.linebreak = true
o.breakindent = true
o.showbreak = " "
o.swapfile = false
o.cursorline = true
