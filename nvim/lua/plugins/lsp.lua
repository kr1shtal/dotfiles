return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
    end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    enabled = false,
    config = function()
      require("mason-lspconfig").setup {
        ensure_installed = {
          "clangd",
          "pyright",
          "ts_ls",
          "rust_analyzer",
          "html",
          "emmet_ls",
          "cssls",
          "lua_ls",
        },
      }
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require'lspconfig'.clangd.setup({
        capabilities = capabilities
      })

      require'lspconfig'.pyright.setup({
        capabilities = capabilities
      })

      require'lspconfig'.ts_ls.setup({
        capabilities = capabilities
      })
      require'lspconfig'.rust_analyzer.setup({
        capabilities = capabilities
      })

      require'lspconfig'.html.setup({
        capabilities = capabilities
      })

      require'lspconfig'.emmet_ls.setup({
        capabilities = capabilities
      })

      require'lspconfig'.cssls.setup({
        capabilities = capabilities
      })

      require'lspconfig'.lua_ls.setup({
        capabilities = capabilities
      })

    end
  },
}



