return {
  {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
      require("lackluster").setup()
      vim.cmd.colorscheme("lackluster-night")
    end,
  },
}
