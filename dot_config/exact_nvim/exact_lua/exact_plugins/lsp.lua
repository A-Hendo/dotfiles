return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                --autoSearchPaths = true,
                --diagnosticMode = "openFilesOnly",
                --useLibraryCodeForTypes = true,
                typeCheckingMode = "standard",
              },
            },
          },
        },
      },
    },
  }
}
