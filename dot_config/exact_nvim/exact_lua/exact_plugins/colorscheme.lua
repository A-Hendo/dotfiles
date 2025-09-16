local specs = {
  all = {
    syntax = {
      comment = "#6A9955",
      --    variable = "#b5cea8",
      string = "#ce9178",
    }
  }
}

return { {
  'projekt0n/github-nvim-theme',
  name = 'github-theme',
  lazy = false,    -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require('github-theme').setup({
      specs = specs,
    })
    vim.cmd('colorscheme github_dark_default')
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function()
        vim.api.nvim_set_hl(0, "@module.python", { fg = "#ffa657" })
        vim.api.nvim_set_hl(0, "@variable.parameter.python", { fg = "#b5cea8" })
        vim.api.nvim_set_hl(0, "@variable.builtin.python", { fg = "#e6edf3" })
        vim.api.nvim_set_hl(0, "@operator.python", { fg = "#ff7b72" })
        vim.api.nvim_set_hl(0, "@lsp.type.class", { fg = "#ffa657" })
        vim.api.nvim_set_hl(0, "@lsp.type.namespace.python", { fg = "#ffa657" })
        vim.api.nvim_set_hl(0, "@lsp.type.parameter.python", { fg = "#b5cea8" })
        vim.api.nvim_set_hl(0, "@lsp.typemod.selfParameter.definition", { fg = "#e6edf3" })
        vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#7d8590", bg = "#2c2f33" })
        vim.api.nvim_set_hl(0, "@keyword.exception.python", { fg = "#ff7b72" })
      end,
    })
  end,
}
}
