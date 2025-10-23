local util = require("axolotl.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

function M.get(c, opts)
  local ret = {
    RenderMarkdownBullet    = { fg = c.orange },
    RenderMarkdownCode      = { bg = c.bg_dark },
    RenderMarkdownDash      = { fg = c.orange },
    RenderMarkdownTableHead = { fg = c.red },
    RenderMarkdownTableRow  = { fg = c.orange },
    RenderMarkdownCodeInline = { link = "@markup.raw.markdown_inline" }
  }
  
  -- Create rainbow colors for headers using our color palette
  local rainbow = {
    c.primary,    -- H1 - Deep purple
    c.secondary,  -- H2 - Deep blue  
    c.tertiary,   -- H3 - Bright magenta
    c.quaternary, -- H4 - Light purple
    c.cyan,       -- H5 - Cyan
    c.green,      -- H6 - Green
  }
  
  for i, color in ipairs(rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = util.darken(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  
  return ret
end

return M