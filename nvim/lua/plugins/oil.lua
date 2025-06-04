return {
  {
    'stevearc/oil.nvim',
    opts = {},
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    lazy = false,

    config = function()
      require("oil").setup({})

      vim.keymap.set("n", "<leader>n", ":Oil<CR>", { desc = "Open parent directory" })
    end
  },
}
