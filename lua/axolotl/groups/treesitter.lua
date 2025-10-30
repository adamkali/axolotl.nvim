local util = require("axolotl.util")

local M = {}

function M.get(c, opts)
  local ret = {
    ["@annotation"]                 = { link = "PreProc" },
    ["@attribute"]                  = { link = "PreProc" },
    ["@boolean"]                    = { link = "Boolean" },
    ["@character"]                  = { link = "Character" },
    ["@character.printf"]           = { link = "SpecialChar" },
    ["@character.special"]          = { link = "SpecialChar" },
    ["@comment"]                    = { link = "Comment" },
    ["@comment.error"]              = { fg = c.error },
    ["@comment.hint"]               = { fg = c.hint },
    ["@comment.info"]               = { fg = c.info },
    ["@comment.note"]               = { fg = c.hint },
    ["@comment.todo"]               = { fg = c.yellow },
    ["@comment.warning"]            = { fg = c.warning },
    ["@constant"]                   = { link = "Constant" },
    ["@constant.builtin"]           = { link = "Special" },
    ["@constant.macro"]             = { link = "Define" },
    ["@constructor"]                = { fg = c.magenta },
    ["@constructor.tsx"]            = { fg = c.blue1 },
    ["@diff.delta"]                 = { link = "DiffChange" },
    ["@diff.minus"]                 = { link = "DiffDelete" },
    ["@diff.plus"]                  = { link = "DiffAdd" },
    ["@function"]                   = { link = "Function" },
    ["@function.builtin"]           = { link = "Special" },
    ["@function.call"]              = { link = "@function" },
    ["@function.macro"]             = { link = "Macro" },
    ["@function.method"]            = { link = "Function" },
    ["@function.method.call"]       = { link = "@function.method" },
    ["@keyword"]                    = { fg = c.purple, style = opts.styles.keywords },
    ["@keyword.conditional"]        = { link = "Conditional" },
    ["@keyword.coroutine"]          = { link = "@keyword" },
    ["@keyword.debug"]              = { link = "Debug" },
    ["@keyword.directive"]          = { link = "PreProc" },
    ["@keyword.directive.define"]   = { link = "Define" },
    ["@keyword.exception"]          = { link = "Exception" },
    ["@keyword.function"]           = { fg = c.magenta, style = opts.styles.functions },
    ["@keyword.import"]             = { fg = c.magenta, bold = true },
    ["@keyword.operator"]           = { link = "@operator" },
    ["@keyword.repeat"]             = { link = "Repeat" },
    ["@keyword.return"]             = { link = "@keyword" },
    ["@keyword.storage"]            = { link = "StorageClass" },
    ["@label"]                      = { fg = c.blue },
    ["@markup"]                     = { link = "@none" },
    ["@markup.emphasis"]            = { italic = true },
    ["@markup.environment"]         = { link = "Macro" },
    ["@markup.environment.name"]    = { link = "Type" },
    ["@markup.heading"]             = { link = "Title" },
    ["@markup.italic"]              = { italic = true },
    ["@markup.link"]                = { fg = c.teal },
    ["@markup.link.label"]          = { link = "SpecialChar" },
    ["@markup.link.label.symbol"]   = { link = "Identifier" },
    ["@markup.link.url"]            = { link = "Underlined" },
    ["@markup.list"]                = { fg = c.blue5 },
    ["@markup.list.checked"]        = { fg = c.green1 },
    ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
    ["@markup.list.unchecked"]      = { fg = c.blue },
    ["@markup.math"]                = { link = "Special" },
    ["@markup.raw"]                 = { link = "String" },
    ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.cyan_muted },
    ["@markup.strikethrough"]       = { strikethrough = true },
    ["@markup.strong"]              = { bold = true },
    ["@markup.underline"]           = { underline = true },
    ["@module"]                     = { fg = c.blue, bold = true },
    ["@module.builtin"]             = { fg = c.red },
    ["@namespace.builtin"]          = { link = "@variable.builtin" },
    ["@none"]                       = {},
    ["@number"]                     = { link = "Number" },
    ["@number.float"]               = { link = "Float" },
    ["@operator"]                   = { fg = c.blue5 },
    ["@property"]                   = { fg = c.green1 },
    ["@punctuation.bracket"]        = { fg = c.fg_dark },
    ["@punctuation.delimiter"]      = { fg = c.blue5 },
    ["@punctuation.special"]        = { fg = c.blue5 },
    ["@punctuation.special.markdown"] = { fg = c.orange },
    ["@string"]                     = { link = "String" },
    ["@string.documentation"]       = { fg = c.yellow },
    ["@string.escape"]              = { fg = c.magenta },
    ["@string.regexp"]              = { fg = c.blue6 },
    ["@tag"]                        = { link = "Label" },
    ["@tag.attribute"]              = { link = "@property" },
    ["@tag.delimiter"]              = { link = "Delimiter" },
    ["@tag.delimiter.tsx"]          = { fg = c.light_blue },
    ["@tag.tsx"]                    = { fg = c.red },
    ["@tag.javascript"]             = { fg = c.red },
    ["@type"]                       = { link = "Type" },
    ["@type.builtin"]               = { fg = c.tertiary, bold = true },
    ["@type.definition"]            = { link = "Typedef" },
    ["@type.qualifier"]             = { link = "@keyword" },
    ["@variable"]                   = { fg = c.fg, style = opts.styles.variables },
    ["@variable.builtin"]           = { fg = c.red },
    ["@variable.member"]            = { fg = c.green1 },
    ["@variable.parameter"]         = { fg = c.yellow },
    ["@variable.parameter.builtin"] = { fg = c.cyan_muted },
  }

  -- Create rainbow colors for markdown headers using our color palette
  local rainbow = {
    c.primary,    -- H1 - Deep purple
    c.secondary,  -- H2 - Deep blue  
    c.tertiary,   -- H3 - Bright magenta
    c.quaternary, -- H4 - Light purple
    c.cyan,       -- H5 - Cyan
    c.green,      -- H6 - Green
  }
  
  for i, color in ipairs(rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  
  return ret
end

return M