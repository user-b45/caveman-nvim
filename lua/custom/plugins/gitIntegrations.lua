return {
  {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup({
        -- Your gitsigns configuration here
      })
    end,
  },

  {
    "tpope/vim-fugitive",
    keys = {
      { "<leader>gs", ":Git<CR>",        desc = "Git Status" },
      { "<leader>gc", ":Gcommit<CR>",    desc = "Git Commit" },
      { "<leader>gp", ":Gpush<CR>",      desc = "Git Push" },
      { "<leader>gP", ":Gpull<CR>",      desc = "Git Pull" },
      { "<leader>gd", ":Gdiffsplit<CR>", desc = "Git Diff Split" },
      { "<leader>gw", ":Gwrite<CR>",     desc = "Git Add (Write)" },
      { "<leader>gr", ":Gread<CR>",      desc = "Git Restore File" },
      { "<leader>gb", ":Gblame<CR>",     desc = "Git Blame" },
      { "<leader>gl", ":Glog<CR>",       desc = "Git Log" },
      { "<leader>go", ":Gbrowse<CR>",    desc = "GitHub Open" },
    },
    cmd = { "Git", "Gwrite", "Gread", "Gcommit", "Gpush", "Gpull", "Gdiffsplit", "Gblame", "Glog", "Gbrowse" },
  }

}
