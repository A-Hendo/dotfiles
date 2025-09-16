-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then

else
  require("config.lazy")
  vim.cmd([[let &t_Cs = "\e[4:3m"]])
  vim.cmd([[let &t_Ce = "\e[4:0m"]])
  --  require('lspconfig').ruff.setup({
  --    init_options = {
  --      settings = {
  --      }
  --    }
  --  })

  --breakrequire('lspconfig').basedpyright.setup {
  --  settings = {
  --    basedpyright = {
  --    -- Using Ruff's import organizer
  --     disableOrganizeImports = true,
  --    },
  --    python = {
  --      analysis = {
  --      },
  --    },
  --  },
end
