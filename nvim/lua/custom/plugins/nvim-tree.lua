return {
  {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() -- This is the function that runs, AFTER loading
      -- THIS IS FOR NVIM-TREE disable netrw at the very start of your init.lua
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1
      local function my_on_attach(bufnr)
        local api = require 'nvim-tree.api'

        local function opts(desc)
          return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end

        -- default mappings
        api.config.mappings.default_on_attach(bufnr)

        -- custom mappings
        -- vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts 'Up')
        -- vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
      end

      require('nvim-tree').setup {
        on_attach = my_on_attach,
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = true,
        },
      }
    end,
    keys = {
      {
        '<leader>t',
        function()
          require('nvim-tree.api').tree.toggle { path = '<args>', find_file = false, update_root = false, focus = true }
        end,
        desc = 'nvim-tree: [t]oggle tree',
      },
    },
  },
}
