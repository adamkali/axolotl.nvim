local util = require("axolotl.util")

local M = {}

function M.set(groups, colors)
  local config = require("axolotl.config")
  
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end
  
  vim.o.background = "dark"
  vim.o.termguicolors = true
  vim.g.colors_name = "axolotl"
  
  for group, highlight in pairs(groups) do
    -- Handle style property conversion
    if highlight.style then
      for key, value in pairs(highlight.style) do
        highlight[key] = value
      end
      highlight.style = nil
    end
    
    vim.api.nvim_set_hl(0, group, highlight)
  end
  
  if config.options.terminal_colors then
    M.terminal(colors)
  end
end

function M.terminal(colors)
  vim.g.terminal_color_0 = colors.black
  vim.g.terminal_color_1 = colors.red
  vim.g.terminal_color_2 = colors.green
  vim.g.terminal_color_3 = colors.yellow
  vim.g.terminal_color_4 = colors.blue
  vim.g.terminal_color_5 = colors.magenta
  vim.g.terminal_color_6 = colors.cyan
  vim.g.terminal_color_7 = colors.fg_dark
  vim.g.terminal_color_8 = colors.terminal_black
  vim.g.terminal_color_9 = colors.red
  vim.g.terminal_color_10 = colors.green
  vim.g.terminal_color_11 = colors.yellow
  vim.g.terminal_color_12 = colors.blue
  vim.g.terminal_color_13 = colors.magenta
  vim.g.terminal_color_14 = colors.cyan
  vim.g.terminal_color_15 = colors.fg
end

return M
