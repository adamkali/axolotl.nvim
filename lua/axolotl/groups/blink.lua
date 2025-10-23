local M = {}

M.url = "https://github.com/Saghen/blink.cmp"

function M.get(c, opts)
  local ret = {
    BlinkCmpDoc                 = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder           = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpGhostText           = { fg = c.terminal_black },
    BlinkCmpKindCodeium         = { fg = c.tertiary, bg = c.none, italic = true },
    BlinkCmpKindCopilot         = { fg = c.tertiary, bg = c.none, italic = true },
    BlinkCmpKindDefault         = { fg = c.fg_dark, bg = c.none },
    BlinkCmpKindSupermaven      = { fg = c.tertiary, bg = c.none, italic = true },
    BlinkCmpKindTabNine         = { fg = c.tertiary, bg = c.none, italic = true },
    BlinkCmpLabel               = { fg = c.fg, bg = c.none },
    BlinkCmpLabelDeprecated     = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    BlinkCmpLabelMatch          = { fg = c.blue1, bg = c.none },
    BlinkCmpMenu                = { fg = c.fg, bg = c.bg_float },
    BlinkCmpMenuBorder          = { fg = c.border_highlight, bg = c.bg_float },
    BlinkCmpSignatureHelp       = { fg = c.fg, bg = c.bg_float },
    BlinkCmpSignatureHelpBorder = { fg = c.border_highlight, bg = c.bg_float },
  }

  return ret
end

return M