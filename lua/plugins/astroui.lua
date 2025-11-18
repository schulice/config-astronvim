---@type LazySpec
return {
  {
    "AstroNvim/astrotheme",
    ---@type AstroThemeOpts
    opts = {
      palette = "astrodark",
      background = {
        light = "astrolight",
        dark = "astrodark",
      },
      style = {
        transparent = false, -- Bool value, toggles transparency.
        inactive = false, -- Bool value, toggles inactive window color.
        float = false, -- Bool value, toggles floating windows background colors.
        neotree = true, -- Bool value, toggles neo-trees background color.
        border = true, -- Bool value, toggles borders.
        title_invert = false, -- Bool value, swaps text and background colors.
        italic_comments = false, -- Bool value, toggles italic comments.
        simple_syntax_colors = false, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
      },
      palettes = {},
      highlights = {},
    },
  },
  {
    "AstroNvim/astroui",
    specs = {
      "astrocore",
      opts = {
        options = {
          opt = {
            -- Set light theme to default.
            -- We give up auto change theme by osc 2031 due to the bug that
            -- highlight group error after lazygit open file with flatten nvim
            background = "light",
          },
        },
      },
    },
    ---@type AstroUIOpts
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
