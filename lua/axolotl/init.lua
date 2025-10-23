local M = {}

function M.load(opts)
  local config = require("axolotl.config")
  if opts then
    config.extend(opts)
  end

  local colors = require("axolotl.colors").setup()
  local groups = require("axolotl.groups").setup(colors, config.options)
  local theme = require("axolotl.theme")
  
  theme.set(groups, colors)
  
  config.options.on_colors(colors)
  config.options.on_highlights(groups, colors)
end

function M.setup(opts)
  require("axolotl.config").setup(opts)
end

function M.colorscheme()
  vim.o.termguicolors = true
  vim.g.colors_name = "axolotl"
  M.load()
end

return M