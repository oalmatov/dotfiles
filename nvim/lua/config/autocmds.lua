-- c and rust files
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = { '*.c', '*.rs' },
    command = 'set syntax=c textwidth=79 colorcolumn=80',
})

-- frontend/react files
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = { '*.ts', '*.tsx', '*.js', '*.jsx', '*.json', '*.css', '*.html', '*.astro' },
    command = 'set tabstop=2 softtabstop=2 shiftwidth=2',
})

-- markdown
vim.api.nvim_create_autocmd({ 'BufNewFile', 'BufRead' }, {
    pattern = { '*.md' },
    command = 'set wrap textwidth=79 colorcolumn=80 conceallevel=2',
})

-- format on save
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('lsp-format', { clear = true }),
    callback = function(args)
        vim.api.nvim_create_autocmd('BufWritePre', {
            buffer = args.buf,
            callback = function()
                vim.lsp.buf.format({ async = false, id = args.data.client_id })
            end,
        })
    end,
})
