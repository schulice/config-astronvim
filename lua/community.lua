-- if true then return {} end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  -- { import = "astrocommunity.recipes.picker-nvchad-theme" },
  { import = "astrocommunity.recipes.vscode-icons" },
  -- tools
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.terminal-integration.nvim-unception" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },
  -- Language lsp package, may remove them later
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.python-ruff" },
}
