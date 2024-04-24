return {
  "shaunsingh/nord.nvim",
  priority = 1000,
  config = function()
    vim.g.nord_contrast = false
    vim.g.nord_borders = false
    vim.g.nord_disable_background = false

    vim.g.nord_italic = true
    vim.g.nord_uniform_diff_background = false
    vim.g.nord_bold = true
    local highlights = require("nord").bufferline.highlights({
      italic = true,
      bold = true,
    })

    require("bufferline").setup({
      options = {
        separator_style = "thin",
      },
      highlights = highlights,
    })

    require("nord").set()
    vim.cmd("colorscheme nord")
  end,
}
