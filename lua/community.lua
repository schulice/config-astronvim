---@type LazySpec
return {
  "AstroNvim/astrocommunity",

  -- Theme
  { import = "astrocommunity.recipes.picker-lsp-mappings" },
  { import = "astrocommunity.recipes.astrolsp-no-insert-inlay-hints" },
  -- { import = "astrocommunity.recipes.heirline-nvchad-statusline" },
  -- { import = "astrocommunity.recipes.picker-nvchad-theme" },
  { import = "astrocommunity.recipes.heirline-vscode-winbar" },
  { import = "astrocommunity.recipes.vscode-icons" },

  -- VSCode-Nvim integration
  { import = "astrocommunity.recipes.vscode" },

  -- Basic
  { import = "astrocommunity.motion.flash-nvim" },
  -- { import = "astrocommunity.terminal-integration.nvim-unception" },
  { import = "astrocommunity.terminal-integration.flatten-nvim" },
  { import = "astrocommunity.markdown-and-latex.render-markdown-nvim" },

  -- Language lsp package, may remove them later
  { import = "astrocommunity.pack.lua" },
  -- { import = "astrocommunity.pack.rust" },
  -- { import = "astrocommunity.pack.markdown" },
  -- { import = "astrocommunity.pack.cpp" },
  -- { import = "astrocommunity.pack.python-ruff" },
}
