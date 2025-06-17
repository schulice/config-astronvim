return {
  "folke/todo-comments.nvim",
  opt = {
    search = { pattern = [[\b(KEYWORDS)(\([^\)]*\))?:]] },
    highlight = {
      -- DONE(CX):https://github.com/folke/todo-comments.nvim/issues/10
      -- SOLVED: https://github.com/folke/todo-comments.nvim/issues/332
      pattern = [[.*<((KEYWORDS)%(\(.{-1,}\))?):]],
    },
  },
}
