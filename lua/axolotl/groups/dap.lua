local util = require("axolotl.util")

local M = {}

M.url = "https://github.com/mfussenegger/nvim-dap"

function M.get(c, opts)
  return {
    DapStoppedLine = { bg = util.darken(c.warning, 0.1) },
  }
end

return M