return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    local astro = require "astrocore"
    opts = astro.extend_tbl(opts, {
      -- enable git status on file cause low performance on huge monorepo
      enable_git_status = false,
    })
    return opts
  end,
}
