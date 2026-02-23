-- Setup TAB as spaces instead of TAB character
vim.opt.tabstop = 4 -- Set TAB character to look like 4 spaces
vim.opt.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.opt.softtabstop = 4 -- Number of spaces added when TAB key is pressed
vim.opt.shiftwidth = 4 -- Number of spaces inserted when indenting
-- Auto and Smart indentings
vim.opt.autoindent = true -- Auto indent continues indent level when a new line is started
vim.opt.smartindent = true -- Smart indent (indents automatically for C-style languages i.e. after {} etc...)
-- Setup line numbers
vim.opt.number = true 
