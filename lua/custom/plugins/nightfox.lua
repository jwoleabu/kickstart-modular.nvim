return {
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    config = function()
      require("nightfox").setup({
        options = {
          transparent = false,
        },
        groups = {
          carbonfox = {
          },
        },
      })

      vim.cmd.colorscheme("carbonfox")
    end,
  },
}
