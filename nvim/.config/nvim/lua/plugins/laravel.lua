return {
  {
    "adibhanna/laravel.nvim",
    ft = { "php", "blade" },
    dependencies = {
      "folke/snacks.nvim", -- Optional: for enhanced UI
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
    },
    keys = {
      { "<leader>la", ":Artisan<cr>", desc = "Laravel Artisan" },
      { "<leader>lc", ":Composer<cr>", desc = "Composer" },
      { "<leader>lr", ":LaravelRoute<cr>", desc = "Laravel Routes" },
      { "<leader>lm", ":LaravelMake<cr>", desc = "Laravel Make" },
    },
    config = function()
      require("laravel").setup({
        notifications = false,
        debug = false,
        keymaps = true,
      })
    end,
  },
  {
    -- dir = "~/Developer/opensource/phprefactoring.nvim",
    "adibhanna/phprefactoring.nvim",
    dependencies = {
      "MunifTanjim/nui.nvim",
    },
    ft = "php",
    config = function()
      require("phprefactoring").setup()
    end,
  },
}
