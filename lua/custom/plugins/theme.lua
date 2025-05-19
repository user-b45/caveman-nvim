-- return {
--   "metalelf0/base16-black-metal-scheme",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd.colorscheme("base16-black-metal-immortal")
--     vim.cmd([[
--   " Override gutter (line numbers) background
--   hi LineNr      guibg=#000000 ctermbg=black  " Line numbers
--   hi CursorLineNr guibg=#000000 guifg=#ffffff  " Current line number
--   hi SignColumn  guibg=#000000 ctermbg=black   " Gutter for signs (e.g., Git, LSP)
--   hi FoldColumn  guibg=#000000 ctermbg=black   " Folding column
-- ]])
--   end,
-- }
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Highest priority (loads first)
    lazy = false,    -- Load immediately on startup
    opts = {

      flavour = "mocha",   -- or "latte", "frappe", "macchiato"
      background = {
        light = "#000000", -- Not used if flavour is dark
        dark = "#000000",  -- Forces pure black background
      },
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
      transparent_background = false, -- Disable transparency
      integrations = {
        telescope = true,
        mason = true,
        -- Add other integrations as needed
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin") -- Apply immediately
    end,
  }
}
