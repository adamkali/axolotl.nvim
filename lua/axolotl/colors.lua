local util = require("axolotl.util")

local M = {}

function M.setup()
  local config = require("axolotl.config")
  local style = config.options

  local c = {
    none = "NONE",
  }

  -- Base axolotl-inspired palette
  c.primary = "#662391"     -- Deep purple (primary)
  c.secondary = "#082abc"   -- Deep blue (secondary)
  c.tertiary = "#ec35e1"    -- Bright magenta (tertiary)
  c.quaternary = "#b967db"  -- Light purple (quaternary)
  c.bg = "#13061d"          -- Very dark purple background
  c.fg = "#e0cff0"          -- Light purple foreground

  -- Generate variations
  c.bg_dark = util.darken(c.bg, 0.8)
  c.bg_float = c.bg_dark
  c.bg_highlight = util.lighten(c.bg, 0.1)
  c.bg_popup = c.bg_dark
  c.bg_sidebar = c.bg_dark
  c.bg_statusline = c.bg_dark
  c.bg_visual = util.lighten(c.primary, 0.2)
  c.bg_search = util.lighten(c.quaternary, 0.3)
  
  -- Terminal colors
  c.terminal_black = c.bg_dark
  c.black = util.darken(c.fg, 0.8)
  c.border = c.black
  c.border_highlight = util.lighten(c.primary, 0.3)
  c.comment = util.lighten(c.bg, 0.4)
  c.dark3 = util.lighten(c.bg, 0.2)
  c.dark5 = util.lighten(c.bg, 0.3)
  c.fg_dark = util.darken(c.fg, 0.2)
  c.fg_gutter = c.dark3
  c.fg_sidebar = c.fg_dark

  -- Semantic colors using our palette
  c.blue = c.secondary
  c.blue0 = util.darken(c.secondary, 0.8)
  c.blue1 = util.lighten(c.secondary, 0.2)
  c.blue2 = util.lighten(c.secondary, 0.4)
  c.blue5 = util.lighten(c.secondary, 0.6)
  c.blue6 = util.lighten(c.secondary, 0.8)
  c.blue7 = util.lighten(c.secondary, 0.9)
  
  c.cyan = util.mix(c.secondary, c.tertiary, 0.5)
  c.green = util.mix(c.quaternary, c.secondary, 0.3)
  c.green1 = util.lighten(c.green, 0.2)
  c.green2 = util.darken(c.green, 0.2)
  
  c.magenta = c.tertiary
  c.magenta2 = util.darken(c.tertiary, 0.2)
  
  c.orange = c.quaternary
  c.purple = c.primary
  
  c.red = util.mix(c.tertiary, c.quaternary, 0.6)
  c.red1 = util.lighten(c.red, 0.2)
  
  c.teal = util.mix(c.secondary, c.green, 0.5)
  c.yellow = util.lighten(c.quaternary, 0.2)
  
  -- Special colors
  c.git = {
    add = c.green,
    change = c.blue,
    delete = c.red,
    ignore = c.dark3,
  }
  
  c.gitSigns = {
    add = util.brighten(c.git.add, 0.2),
    change = util.brighten(c.git.change, 0.2),
    delete = util.brighten(c.git.delete, 0.2),
  }

  -- Diff colors
  c.diff = {
    add = util.darken(c.green2, 0.15),
    delete = util.darken(c.red1, 0.15),
    change = util.darken(c.blue0, 0.15),
    text = util.darken(c.blue7, 0.15),
  }

  c.delta = {
    add = util.darken(c.green, 0.45),
    delete = util.darken(c.red, 0.45),
  }

  -- Error/warning colors
  c.error = c.red1
  c.warning = c.yellow
  c.info = c.blue2
  c.hint = c.teal

  if not style.transparent then
    util.bg = c.bg
    util.sidebar = c.bg_sidebar
  else
    util.bg = c.none
    util.sidebar = c.none
  end

  return c
end

return M
