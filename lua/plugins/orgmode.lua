return {
  "nvim-orgmode/orgmode",
  event = "VeryLazy",
  ft = { "org" },
  config = function()
    -- Setup orgmode
    require("orgmode").setup {
      org_agenda_files = "~/org/**/*",
      org_default_notes_file = "~/org/refile.org",
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
  specs = {
    "astrocore",
    opts = function(_, opts)
      local get_icon = require("astroui").get_icon
      opts.mappings.n["<Leader>o"] = { desc = get_icon("Window", 1, true) .. "Org Mode" }
      return opts
    end,
  },
}
