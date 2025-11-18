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
      "yaml",
    },
    ignore_install = {
      "org",
    },
  },
}
