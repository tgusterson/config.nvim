return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    spec = {
      { '<leader>c', group = '[C]ode',     mode = { 'n', 'x' } },
      { '<leader>d', group = '[D]ocument' },
      { '<leader>r', group = '[R]ename' },
      { '<leader>s', group = '[S]earch' },
      { '<leader>f', group = '[F]earch' },
      { '<leader>w', group = '[W]orkspace' },
      { '<leader>t', group = '[T]oggle' },
      { '<leader>h', group = 'Git [H]unk', mode = { 'n', 'v' } },
    },
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
