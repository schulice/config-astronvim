return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    opts = { enable_git_status = false, auto_expand_width = true },
  },
  {
    "folke/snacks.nvim",
    ---@type snacks.Config
    opts = {
      explorer = {
        enabled = true,
        trash = false,
      },
      keys = {},
    },
    specs = {
      "AstroNvim/astrocore",
      opts = function(_, opts)
        local maps = opts.mappings
        maps.n["<Leader>e"] = { function() Snacks.explorer() end, desc = "File Explorer" }
      end,
    },
  },
}
