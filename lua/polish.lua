-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

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

-- vim.keymap.set("n", "<C-\\>", "<cmd>ToggleTerm<cr>", {
--   noremap = true,
--   silent = true,
--   desc = "Toggle terminal",
-- })

vim.keymap.set("n", "<C-_>", "<cmd>ToggleTerm<cr>", {
  noremap = true,
  silent = true,
  desc = "Toggle terminal",
})
