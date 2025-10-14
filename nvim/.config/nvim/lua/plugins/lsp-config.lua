return {
  -- {
  --     "williamboman/mason-lspconfig.nvim",
  --     config = function()
  --         require("mason-lspconfig").setup({
  --             ensure_installed = {
  --                 "html",
  --                 "lua_ls",
  --                 "tailwindcss",
  --                 "gopls",
  --                 "mesonlsp",
  --             },
  --         })
  --     end,
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        automatic_installation = true,
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- config = function()
    --   local lspconfig = require("lspconfig")
    --   local capabilities = vim.lsp.protocol.make_client_capabilities()
    --
    --   lspconfig.ruby_lsp.setup({
    --     capabilities = capabilities,
    --   })
    -- end,
    opts = {
      servers = {
        -- ruby_lsp = {
        --   init_options = {
        --     formatter = "standard",
        --     linters = { "standard" },
        --   },
        --   addonSettings = {
        --     ["Ruby LSP Rails"] = {
        --       enablePendingMigrationsPrompt = false,
        --     },
        --   },
        -- }, -- phpactor = {
        --   handlers = {
        --     -- Disable diagnostics from Phpactor
        --     -- ["textDocument/publishDiagnostics"] = function() end,
        --   },
        -- },
        intelephense = {
          settings = {
            intelephense = {
              stubs = {
                "laravel",
                "Illuminate",
                "view",
                "auth",
                "cache",
                "config",
                "cookie",
                "database",
                "event",
                "filesystem",
                "log",
                "mail",
                "queue",
                "session",
                "support",
                "testing",
                "validation",
                "http",
                "routing",
              },
              files = {
                maxSize = 5000000, -- Soporta archivos grandes
              },
              environment = {
                includePaths = { "/vendor/laravel/framework/src" }, -- Asegura que cargue Laravel
              },
              completion = {
                fullyQualifyGlobalConstantsAndFunctions = true,
              },
            },
          },
        },
      },
    },
  },
  -- {
  --   "neovim/nvim-lspconfig.config",
  --   dependencies = { "saghen/blink.cmp" },
  --   -- opts = {
  --   --   servers = {
  --   --     lua_ls = {},
  --   --     tailwindcss = {},
  --   --     html = {},
  --   --   },
  --   -- },
  --   config = function()
  --     local lspconfig = require("lspconfig")
  --     local capabilities = require("blink.cmp").get_lsp_capabilities()
  --     lspconfig.intelephense.setup({ capabilities = capabilities })
  --     lspconfig.lua_ls.setup({ capabilities = capabilities })
  --     -- lspconfig.tailwindcss.setup({})
  --     -- lspconfig.html.setup({})
  --   end,
  -- },
  --         local lspconfig = require("lspconfig")
  --         local telescope = require("telescope.builtin")
  --         lspconfig.lua_ls.setup({})
  --         -- lspconfig.sourcekit.setup({}) -- installed via hombrew
  --         lspconfig.mesonlsp.setup({})
  --
  --         lspconfig.tailwindcss.setup({})
  --         lspconfig.html."laravel", "Illuminate", "view", "auth", "cache",
  -- "config", "cookie", "database", "event", "filesystem",
  -- "log", "mail", "queue", "session", "support", "testing",
  -- "validation", "http", "routing"setup({})
  --         lspconfig.svelte.setup({})
  --         lspconfig.emmet_ls.setup({})
  --         lspconfig.gopls.setup({})
  --
  --         vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
  --         vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
  --         -- vim.keymap.set("n", "gr", vim.lsp.buf.references, {})
  --         -- vim.keymap.set.("n",'gr', require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  --         vim.keymap.set("n", "gr", telescope.lsp_references, {})
  --         vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
  --         vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
  --         vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
  --         -- vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format, {})
  --     end,
  -- },
  -- {
  --     "telescope-lsp-handlers",
  -- },
  -- { -- this is for showing tailwinds css colors on the intellisense window
  --     "NvChad/nvim-colorizer.lua",
  --     opts = {
  --         user_default_options = {
  --             tailwind = true,
  --         },
  --     },
  -- },
  -- {
  --     "hrsh7th/nvim-cmp",
  --     dependencies = {
  --         { "roobert/tailwindcss-colorizer-cmp.nvim", config = true },
  --     },
  --     opts = function(_, opts)
  --         -- original LazyVim kind icon formatter
  --         local format_kinds = opts.formatting.format
  --         opts.formatting.format = function(entry, item)
  --             format_kinds(entry, item) -- add icons
  --             return require("tailwindcss-colorizer-cmp").formatter(entry, item)
  --         end
  --     end,
  -- }, -- here ends the tailwinds config
  -- {
  --     "ray-x/go.nvim",
  --     dependencies = { -- optional packages
  --         "ray-x/guihua.lua",
  --         "neovim/nvim-lspconfig",
  --         "nvim-treesitter/nvim-treesitter",
  --     },
  --     config = function()
  --         require("go").setup()
  --     end,
  --     event = { "CmdlineEnter" },
  --     ft = { "go", "gomod" },
  --     build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  -- },
  --
}
