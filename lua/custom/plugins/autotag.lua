return {
  'windwp/nvim-ts-autotag',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-ts-autotag').setup({
      opts = {
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = true -- Auto close on trailing </
      },
      -- Per-filetype config
      per_filetype = {
        ["html"] = { enable_close = true },
        ["javascript"] = { enable_close = true },
        ["typescript"] = { enable_close = true },
        ["javascriptreact"] = { enable_close = true },
        ["typescriptreact"] = { enable_close = true },
      }
    })
  end,
}