local util = require("axolotl.util")

local M = {}

M.url = "https://github.com/folke/snacks.nvim"

function M.get(c, opts)
  local ret = {
    SnacksNotifierDebug       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderDebug = { fg = util.darken(c.comment, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconDebug   = { fg = c.comment },
    SnacksNotifierTitleDebug  = { fg = c.comment },
    SnacksNotifierError       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderError = { fg = util.darken(c.error, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconError   = { fg = c.error },
    SnacksNotifierTitleError  = { fg = c.error },
    SnacksNotifierInfo        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderInfo  = { fg = util.darken(c.info, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconInfo    = { fg = c.info },
    SnacksNotifierTitleInfo   = { fg = c.info },
    SnacksNotifierTrace       = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderTrace = { fg = util.darken(c.purple, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconTrace   = { fg = c.purple },
    SnacksNotifierTitleTrace  = { fg = c.purple },
    SnacksNotifierWarn        = { fg = c.fg, bg = opts.transparent and c.none or c.bg },
    SnacksNotifierBorderWarn  = { fg = util.darken(c.warning, 0.4), bg = opts.transparent and c.none or c.bg },
    SnacksNotifierIconWarn    = { fg = c.warning },
    SnacksNotifierTitleWarn   = { fg = c.warning },
    -- Dashboard
    SnacksDashboardDesc       = { fg = c.cyan },
    SnacksDashboardFooter     = { fg = c.blue1 },
    SnacksDashboardHeader     = { fg = c.blue },
    SnacksDashboardIcon       = { fg = c.blue1 },
    SnacksDashboardKey        = { fg = c.orange },
    SnacksDashboardSpecial    = { fg = c.purple },
    SnacksDashboardDir        = { fg = c.dark3 },
    -- Profiler
    SnacksProfilerIconInfo    = { bg = util.darken(c.blue1, 0.3), fg = c.blue1 },
    SnacksProfilerBadgeInfo   = { bg = util.darken(c.blue1, 0.1), fg = c.blue1 },
    SnacksFooterKey          = { link = "SnacksProfilerIconInfo" },
    SnacksFooterDesc         = { link = "SnacksProfilerBadgeInfo" },
    SnacksProfilerIconTrace   = { bg = util.darken(c.blue7, 0.3), fg = c.dark3 },
    SnacksProfilerBadgeTrace  = { bg = util.darken(c.blue7, 0.1), fg = c.dark3 },
    SnacksIndent              = { fg = c.fg_gutter, nocombine = true },
    SnacksIndentScope         = { fg = c.blue1, nocombine = true },
    SnacksZenIcon             = { fg = c.purple },
    SnacksInputIcon           = { fg = c.blue1 },
    SnacksInputBorder         = { fg = c.yellow },
    SnacksInputTitle          = { fg = c.yellow },
    -- Picker
    SnacksPickerInputBorder   = { fg = c.orange, bg = c.bg_float },
    SnacksPickerInputTitle    = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle      = { fg = c.orange, bg = c.bg_float },
    SnacksPickerSelected      = { fg = c.magenta2 },
    SnacksPickerToggle        = { link = "SnacksProfilerBadgeInfo" },
    SnacksPickerPickWinCurrent = { fg = c.fg, bg = c.magenta2, bold = true },
    SnacksPickerPickWin       = { fg = c.fg, bg = c.bg_search, bold = true },
  }
  
  -- Create rainbow colors for indent guides using our color palette
  local rainbow = {
    c.primary,    -- Deep purple
    c.secondary,  -- Deep blue  
    c.tertiary,   -- Bright magenta
    c.quaternary, -- Light purple
    c.cyan,       -- Cyan
    c.green,      -- Green
  }
  
  for i, color in ipairs(rainbow) do
    ret["SnacksIndent" .. i] = { fg = color, nocombine = true }
  end
  
  return ret
end

return M