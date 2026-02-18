local keymaps = require('config.keymaps')

local M = {}

local function on_attach(client, bufnr)
    if type(client) == 'table' and client.buf and not bufnr then
        bufnr = client.buf
    end

    if not bufnr then
        return
    end

    keymaps.lsp(bufnr)

    vim.diagnostic.config({
        float = { source = true },

    })

    vim.o.updatetime = 250
    vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
        buffer = bufnr,
        callback = function()
            vim.diagnostic.open_float(nil, { focus = false })
        end,
    })
end

function M.setup()
    require('mason').setup({})

    local capabilities = require('cmp_nvim_lsp').default_capabilities()
    local lspconfig = require('lspconfig')

    require('mason-lspconfig').setup({
        handlers = {
            function(server_name)
                lspconfig[server_name].setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                })
            end,
            basedpyright = function()
                lspconfig.basedpyright.setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                    settings = {
                        basedpyright = {
                            analysis = {
                                typeCheckingMode = 'basic',
                            },
                        },
                    },
                })
            end,
            ruff = function()
                lspconfig.ruff.setup({
                    capabilities = capabilities,
                })
            end,
            vtsls = function()
                lspconfig.vtsls.setup({
                    capabilities = capabilities,
                    on_attach = on_attach,
                    root_dir = require('lspconfig').util.root_pattern('tsconfig.json', 'package.json'),
                })
            end,
        },
    })
end

return M
