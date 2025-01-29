return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader><leader>",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Code",
    },
  },
}
