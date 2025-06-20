return {
  ---@type LazySpec
  {
    "mikavilpas/yazi.nvim",
    event = "VeryLazy",
    dependencies = {
      -- check the installation instructions at
      -- https://github.com/folke/snacks.nvim
      "folke/snacks.nvim",
    },
    keys = {
      -- 👇 in this section, choose your own keymappings!
      -- {
      --   "<leader>-",
      --   mode = { "n", "v" },
      --   "<cmd>Yazi<cr>",
      --   desc = "Open yazi at the current file",
      -- },
      -- {
      --   -- Open in the current working directory
      --   "<leader>E",
      --   "<cmd>Yazi cwd<cr>",
      --   desc = "Open the file manager in nvim's working directory",
      -- },
      {
        "<leader>E",
        "<cmd>Yazi toggle<cr>",
        desc = "Resume the last yazi session",
      },
    },
    ---@type YaziConfig | {}
    opts = {
      -- if you want to open yazi instead of netrw, see below for more info
      open_for_directories = false,
      keymaps = {
        show_help = "<f1>",
      },
    },
  },
}
