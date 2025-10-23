local M = {}

M.url = "https://github.com/zbirenbaum/copilot.lua"

function M.get(c, opts)
  local ret = {
    CopilotAnnotation = { fg = c.tertiary, italic = true },
    CopilotSuggestion = { fg = c.tertiary, italic = true },
  }
  return ret
end

return M