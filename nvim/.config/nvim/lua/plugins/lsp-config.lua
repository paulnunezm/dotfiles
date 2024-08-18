return {
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "html",
                    "lua_ls",
                    "tailwindcss",
                    "gopls",
                    "mesonlsp",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            local telescope = require("telescope.builtin")
            lspconfig.lua_ls.setup({})
            -- lspconfig.sourcekit.setup({}) -- installed via hombrew
            lspconfig.mesonlsp.setup({})

            lspconfig.tailwindcss.setup({})
            lspconfig.html.setup({})
            lspconfig.svelte.setup({})
            lspconfig.emmet_ls.setup({})
            lspconfig.gopls.setup({})

            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
            -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
            -- vim.keymap.set.("n",'gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
            vim.keymap.set("n", "gr", telescope.lsp_references, {})
            vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
            vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
            vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
            -- vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format, {})
        end,
    },
    {
        "telescope-lsp-handlers",
    },
    { -- this is for showing tailwinds css colors on the intellisense window
        "NvChad/nvim-colorizer.lua",
        opts = {
            user_default_options = {
                tailwind = true,
            },
        },
    },
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
        },
        opts = function(_, opts)
            -- original LazyVim kind icon formatter
            local format_kinds = opts.formatting.format
            opts.formatting.format = function(entry, item)
                format_kinds(entry, item) -- add icons
                return require("tailwindcss-colorizer-cmp").formatter(entry, item)
            end
        end,
    }, -- here ends the tailwinds config
    {
        "ray-x/go.nvim",
        dependencies = { -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = { "CmdlineEnter" },
        ft = { "go", "gomod" },
        build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
    },
}
