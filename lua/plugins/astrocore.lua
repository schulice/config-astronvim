---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    treesitter = {
      ensure_installed = {
        "lua",
        "vim",
        "proto",
        "starlark",
        "doxygen",
        "yaml",
        "c",
        "cpp",
      },
      ignore_install = {
        "org",
      },
    },
    -- Configure core features of AstroNvim
    features = {
      large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
      autopairs = true, -- enable autopairs at start
      cmp = true, -- enable completion at start
      diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
      highlighturl = true, -- highlight URLs at start
      notifications = true, -- enable notifications at start
    },
    -- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
    diagnostics = {
      virtual_text = true,
      underline = true,
    },
    -- passed to `vim.filetype.add`
    filetypes = {},
    -- vim options can be configured here
    options = {
      opt = { -- vim.opt.<key>
        relativenumber = true, -- sets vim.opt.relativenumber
        number = true, -- sets vim.opt.number
        spell = false, -- sets vim.opt.spell
        signcolumn = "yes", -- sets vim.opt.signcolumn to yes
        wrap = false, -- sets vim.opt.wrap
        clipboard = "", -- remove unnamedplus
        tabstop = 4,
        fileencodings = { "utf-8", "ucs-bom", "gbk", "cp936", "gb2312", "latin1" },
      },
      g = {},
    },
    -- Mappings can be configured through AstroCore as well.
    -- NOTE: keycodes follow the casing in the vimdocs. For example, `<Leader>` must be capitalized
    mappings = {
      -- first key is the mode
      n = {
        ["<leader>uG"] = {
          function() vim.cmd [[ Gitsigns toggle_current_line_blame ]] end,
          noremap = true,
          silent = true,
          desc = "Toggle git blame virtual text",
        },
      },
    },
    autocmds = {
      AutoNumberRelative = {
        { event = { "InsertEnter" }, callback = function() vim.cmd [[ set norelativenumber ]] end },
        { event = { "InsertLeave" }, callback = function() vim.cmd [[ set relativenumber ]] end },
      },
    },
  },
}
