-- Only copy on osc52
local function paste()
  return {
    vim.split(vim.fn.getreg "", "\n"),
    vim.fn.getregtype "",
  }
end

if vim.env.SSH_TTY then
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy "+",
      ["*"] = require("vim.ui.clipboard.osc52").copy "*",
    },
    paste = {
      ["+"] = paste,
      ["*"] = paste,
    },
  }
end

-- we remove the clipboard setting before

-- <C-/> should also activate terminal
-- now move to core but not test
-- vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<cr>", {
--   noremap = true,
--   silent = true,
--   desc = "Toggle terminal",
-- })
--
--
