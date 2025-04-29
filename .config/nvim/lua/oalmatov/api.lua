-- Set syntax and textwidth for specific file types
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.svi", "*.svi.mako", "*.v.mako", "*.sv.mako"},
    command = "set syntax=systemverilog textwidth=0",
})

-- Set syntax, autoindent, and tab settings for C files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.c", "*.rs"},
    command = "set syntax=c textwidth=79 colorcolumn=80",
})

-- Set syntax, autoindent, and tab settings for C files
vim.api.nvim_create_autocmd({"BufNewFile", "BufRead"}, {
    pattern = {"*.ts", "*.tsx", "*.js", "*.jsx", "*.json", "*.css"},
    command = "set tabstop=2 softtabstop=2 shiftwidth=2",
})
