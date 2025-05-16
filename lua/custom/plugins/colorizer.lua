return {
  {
    'norcalli/nvim-colorizer.lua',
    lazy = true,
    event = { "BufReadPost", "BufNewFile" },
    opts = {
      RGB = true,
      RRGGBB = true,
      names = false,
      tailwind = true,
      css = true,
      css_fn = true,
    },
    config = function(_, opts)
      require('colorizer').setup(nil, opts)
    end,
  }
}
