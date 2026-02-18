return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        keys = {
            { 'ff', function() require('fzf-lua').files() end,                desc = 'Find files' },
            { 'fg', function() require('fzf-lua').live_grep() end,            desc = 'Live grep' },
            { 'fb', function() require('fzf-lua').buffers() end,              desc = 'Find buffers' },
            { 'fd', function() require('fzf-lua').lsp_document_symbols() end, desc = 'Find document symbols' },
            { 'gr', function() require('fzf-lua').lsp_references() end,       desc = 'Find references' },
            { 'gd', function() require('fzf-lua').lsp_definitions() end,      desc = 'Find definitions' },
            { 'gi', function() require('fzf-lua').lsp_implementations() end,  desc = 'Find implementations' },
            { 'go', function() require('fzf-lua').lsp_typedefs() end,         desc = 'Find type definitions' },
        },
    },
    {
        'windwp/nvim-autopairs',
        event = 'InsertEnter',
        config = true,
    },
    {
        'windwp/nvim-ts-autotag',
        event = 'InsertEnter',
        ft = { 'html', 'javascriptreact', 'typescriptreact', 'astro' },
        config = function()
            require('nvim-ts-autotag').setup({
                opts = {
                    enable_close = true,
                    enable_rename = true,
                    enable_close_on_slash = true,
                },
            })
        end,
    },
    {
        'kylechui/nvim-surround',
        version = '*',
        event = 'VeryLazy',
        config = function()
            require('nvim-surround').setup()
        end,
    },
    {
        'stevearc/oil.nvim',
        opts = {
            skip_confirm_for_simple_edits = true,
            prompt_save_on_select_new_entry = false,
            view_options = {
                show_hidden = true,
            }
        },
        dependencies = { 'nvim-tree/nvim-web-devicons' },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
            "nvim-tree/nvim-web-devicons",
        },
        lazy = false,
    },
    {
        'epwalsh/obsidian.nvim',
        version = '*',
        lazy = true,
        event = {
            'BufReadPre /Users/oalmatov/Library/Mobile Documents/iCloud~md~obsidian/Documents/plan/*.md',
        },
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            workspaces = {
                {
                    name = 'plan',
                    path = '/Users/oalmatov/Library/Mobile Documents/iCloud~md~obsidian/Documents/plan',
                },
            },
            ui = { enable = false },
        },
    },
    {
        'supermaven-inc/supermaven-nvim',
        config = function()
            require('supermaven-nvim').setup({
                keymaps = {
                    accept_suggestion = '<Right>',
                    clear_suggestion = '<C-]>',
                    accept_word = '<C-j>',
                },
            })
        end,
    },
}
