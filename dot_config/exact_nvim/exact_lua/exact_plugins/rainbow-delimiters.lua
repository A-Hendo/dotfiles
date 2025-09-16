return {
  "HiPhish/rainbow-delimiters.nvim",
  --name = "rainbow-delimiters",
  config = function()
    local rainbow_delimiters = require("rainbow-delimiters.setup")

    ---@type rainbow_delimiters.config
    vim.g.rainbow_delimiters = {
      strategy = {
        [''] = 'rainbow-delimiters.strategy.global',
        commonlisp = 'rainbow-delimiters.strategy.local',
      },
      query = {
        [''] = 'rainbow-delimiters',
        -- lua = 'rainbow-blocks',
      },
      priority = {
        [''] = 110,
        lua = 210,
      },
      highlight = {
        'RainbowDelimiterBlue',
        'RainbowDelimiterYellow',
        'RainbowDelimiterRed',
        'RainbowDelimiterOrange',
        'RainbowDelimiterGreen',
        'RainbowDelimiterViolet',
        'RainbowDelimiterCyan',
      },
    }
  end
}
