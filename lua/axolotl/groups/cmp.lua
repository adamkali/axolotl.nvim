local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

function M.get(c, opts)
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.cyan_muted },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.cyan_muted, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.blue1, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.blue1, bg = c.none },
    CmpItemKindCodeium     = { fg = c.tertiary, bg = c.none, italic = true },
    CmpItemKindCopilot     = { fg = c.tertiary, bg = c.none, italic = true },
    CmpItemKindSupermaven  = { fg = c.tertiary, bg = c.none, italic = true },
    CmpItemKindDefault     = { fg = c.fg_dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.tertiary, bg = c.none, italic = true },
    CmpItemMenu            = { fg = c.cyan_muted, bg = c.none },
  }

  return ret
end

return M