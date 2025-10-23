local util = require("axolotl.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

function M.get(c)
  return {
    TreesitterContext = { bg = util.darken(c.fg_gutter, 0.8) },
  }
end

return M