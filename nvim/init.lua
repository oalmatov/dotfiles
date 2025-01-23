require("config.lazy")

vim.o.compatible = false
vim.cmd("filetype off")

vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.incsearch = true
vim.opt.hlsearch = true

-- Set syntax and textwidth for specific file types
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.svi", "*.svi.mako", "*.v.mako", "*.sv.mako"},
  command = "set syntax=systemverilog textwidth=0",
})

-- Set syntax, autoindent, and tab settings for C files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
  pattern = {"*.c", "*.py"},
  command = "set syntax=c autoindent tabstop=4 shiftwidth=4 expandtab textwidth=79 colorcolumn=80",
})
