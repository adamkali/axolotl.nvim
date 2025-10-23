local M = {}

M.url = "https://github.com/Exafunction/codeium.nvim"

function M.get(c, opts)
  local ret = {
    CodeiumSuggestion = { fg = c.tertiary, italic = true },
  }
  return ret
end

return M