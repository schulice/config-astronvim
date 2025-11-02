---@type LazySpec
return {
  {
    "zenbones-theme/zenbones.nvim",
    lazy = true,
    specs = {
      "astrocore",
      opts = {
        options = {
          g = {
            zenbones_compat = 1,
          },
        },
      },
    },
  },
  {
    "AstroNvim/astroui",
    ---@type AstroUIOpts
    specs = {
      "astrocore",
      opts = {
        options = {
          opt = {
            -- set light theme to default
            background = "light",
          },
        },
      },
    },
    opts = {
      -- change colorscheme
      colorscheme = "astrodark",
      -- AstroUI allows you to easily modify highlight groups easily for any and all colorschemes
      highlights = {
        init = { -- this table overrides highlights in all themes
          -- Normal = { bg = "#000000" },
        },
        astrodark = { -- a table of overrides/changes when applying the astrotheme theme
          -- Normal = { bg = "#000000" },
        },
      },
      -- Icons can be configured throughout the interface
      icons = {
        -- configure the loading of the lsp in the status line
        -- LSPLoading1 = "⠋",
        -- LSPLoading2 = "⠙",
        -- LSPLoading3 = "⠹",
        -- LSPLoading4 = "⠸",
        -- LSPLoading5 = "⠼",
        -- LSPLoading6 = "⠴",
        -- LSPLoading7 = "⠦",
        -- LSPLoading8 = "⠧",
        -- LSPLoading9 = "⠇",
        -- LSPLoading10 = "⠏",
      },
    },
  },
}
