-- Customize Treesitter

---@type LazySpec
return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "proto",
      "starlark",
      "doxygen",
      -- add more arguments for adding more treesitter parsers
    },
  },
}
