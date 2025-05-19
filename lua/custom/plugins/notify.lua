return {
  {
    "rcarriga/nvim-notify",
    opts = {
      -- Default options (optional)
      timeout = 3000,
      max_height = function() return math.floor(vim.o.lines * 0.75) end,
      max_width = function() return math.floor(vim.o.columns * 0.75) end,
    },
    config = function(_, opts)
      require("notify").setup(opts)  -- Initialize with options
      vim.notify = require("notify") -- Override the default vim.notify()
    end,
  }
}
