local colors = require("axolotl.colors").setup()
local config = require("axolotl.config")

local axolotl = {}

axolotl.normal = {
  a = { bg = colors.blue, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.blue },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

axolotl.insert = {
  a = { bg = colors.green, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.green },
}

axolotl.command = {
  a = { bg = colors.yellow, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.yellow },
}

axolotl.visual = {
  a = { bg = colors.magenta, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.magenta },
}

axolotl.replace = {
  a = { bg = colors.red, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.red },
}

axolotl.terminal = {
  a = { bg = colors.green1, fg = colors.black, gui = "bold" },
  b = { bg = colors.bg_highlight, fg = colors.green1 },
}

axolotl.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

if config.options.lualine_bold then
  for _, mode in pairs(axolotl) do
    mode.a.gui = "bold"
  end
end

return axolotl