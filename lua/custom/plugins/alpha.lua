-- return {
--   'goolord/alpha-nvim',
--   config = function()
--     require 'alpha'.setup(require 'alpha.themes.dashboard'.config)
--   end
-- };
-- lazy.nvim
return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    dashboard = {
      preset = {
        keys = {
          { icon = "", key = "n", desc = "New file", action = "<cmd>ene<CR>" },
          { icon = "󰈞", key = "f", desc = "Find file", action = "<cmd>FzfLua files<CR>" },
          { icon = "󰊄", key = "g", desc = "Live grep", action = "<cmd>FzfLua live_grep<CR>" },
          { icon = "", key = "lg", desc = "Git", action = "<cmd>LazyGit<CR>" },
          { icon = "󰏔", key = "lm", desc = "Mason", action = "<cmd>Mason<CR>" },
          { icon = "", key = "lc", desc = "Code", action = "<cmd>CodeCompanionActions<CR>" },
          { icon = "", key = "lp", desc = "PLugins", action = "<cmd>Lazy<CR>" },
          { icon = "󰅚", key = "q", desc = "Quit", action = "<cmd>qa<CR>" },
        },
        header = [[
  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓
  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
 ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░
▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██
 ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒
 ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░
 ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░
    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░
          ░    ░  ░    ░ ░        ░   ░         ░
                                 ░                  ]],

      },
      sections = {
        { section = "header", indent = 60 },
        { section = "keys", gap = 1, padding = 1 },
        { indent = -60, pane = 2, padding = 10 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1, pane = 2 },
        {
          icon = " ",
          title = "Git Status",
          section = "terminal",
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = "git status --short --branch --renames",
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
          pane = 2,
        },
        { section = "startup", indent = 60, padding = 1 },
        function()
          local version = vim.version()
          return {
            align = 'center',
            text = "   v" .. version.major .. "." .. version.minor .. "." .. version.patch,
            padding = 1,
            indent = 60
          }
        end,
      },
    }
  },
}
