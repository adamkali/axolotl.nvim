local M = {}

M.url = "https://github.com/folke/which-key.nvim"

function M.get(c, opts)
  return {
    WhichKey          = { fg = c.cyan },
    WhichKeyGroup     = { fg = c.blue },
    WhichKeyDesc      = { fg = c.magenta },
    WhichKeySeparator = { fg = c.cyan_muted },
    WhichKeyNormal    = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.dark5 },
  }
end

return M