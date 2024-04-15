return {
  { "rafamadriz/friendly-snippets", enabled = false },
  {
    "lervag/vimtex",
    lazy = false,
    init = function()
      require("configs.vimtex")
    end,
  },
  {
    "stevearc/conform.nvim",
    opts = vim.tbl_deep_extend("force", require("configs.empty"), require("configs.conform")),
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = vim.tbl_deep_extend("force", require("configs.empty"), require("configs.nvim-tree")),
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        opts = { history = true, updateevents = "TextChanged,TextChangedI", enable_autosnippets = true },
        config = function(_, opts)
          require("luasnip.loaders.from_lua").lazy_load({
            paths = "~/.config/nvim/luasnippets",
          })
          require("luasnip").config.set_config(opts)
        end,
      },

      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        enabled = false,
      },

      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-path",
      },
    },
    opts = function()
      return vim.tbl_deep_extend("force", require("nvchad.configs.cmp"), require("configs.cmp"))
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = function()
      vim.tbl_deep_extend("force", require("nvchad.configs.mason"), require("configs.mason"))
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = function()
      return vim.tbl_deep_extend("force", require("nvchad.configs.treesitter"), require("configs.treesitter"))
    end,
  },
}
