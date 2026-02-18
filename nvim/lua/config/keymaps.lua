local map = vim.keymap.set

-- clipboard
map('n', '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Yank to clipboard' })
map({ 'v', 'x' }, '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Yank to clipboard' })
map({ 'n', 'v', 'x' }, '<leader>yy', '"+yy', { noremap = true, silent = true, desc = 'Yank line to clipboard' })
map({ 'n', 'v', 'x' }, '<leader>Y', '"+yy', { noremap = true, silent = true, desc = 'Yank line to clipboard' })

-- window management
map('n', '<leader>=', ':split<CR><C-w>j', { noremap = true, silent = true })
map('n', '<leader>/', ':vsplit<CR><C-w>l', { noremap = true, silent = true })
map('n', '<leader>h', '<C-w>h', { noremap = true, silent = true })
map('n', '<leader>j', '<C-w>j', { noremap = true, silent = true })
map('n', '<leader>k', '<C-w>k', { noremap = true, silent = true })
map('n', '<leader>l', '<C-w>l', { noremap = true, silent = true })

map('n', '<leader>e', ':Oil<CR>', { desc = 'Toggle Oil' })
map('n', '<leader>t', ':Neotree toggle reveal reveal_force_cwd<CR>', { desc = 'Toggle Neotree' })

-- misc
map({ 'n' }, '<Esc><Esc>', vim.cmd.nohlsearch, { desc = 'Clear search highlight' })

-- lsp
local M = {}

function M.lsp(bufnr)
    local opts = { buffer = bufnr }
    map('n', 'K', vim.lsp.buf.hover, opts)
    map('n', 'gl', function() vim.lsp.buf.format({ async = true }) end, opts)
    map('n', 'g.', vim.lsp.buf.code_action, opts)
    map('n', '<F12>', vim.lsp.buf.rename, opts)
end

return M
