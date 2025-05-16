return {
  "metalelf0/base16-black-metal-scheme",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("base16-black-metal-immortal")
    vim.cmd([[
  " Override gutter (line numbers) background
  hi LineNr      guibg=#000000 ctermbg=black  " Line numbers
  hi CursorLineNr guibg=#000000 guifg=#ffffff  " Current line number
  hi SignColumn  guibg=#000000 ctermbg=black   " Gutter for signs (e.g., Git, LSP)
  hi FoldColumn  guibg=#000000 ctermbg=black   " Folding column
]])
  end,
}
