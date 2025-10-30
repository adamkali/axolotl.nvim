local util = require("axolotl.util")

local M = {}

function M.get_groups(name)
  return require("axolotl.groups." .. name)
end

function M.setup(colors, opts)
  local groups = {}

  -- Editor highlights
  groups.ColorColumn = { bg = colors.bg_visual }
  groups.Conceal = { fg = colors.dark5 }
  groups.Cursor = { fg = colors.black, bg = colors.cyan }
  groups.lCursor = { fg = colors.black, bg = colors.cyan }
  groups.CursorIM = { fg = colors.black, bg = colors.cyan }
  groups.CursorColumn = { bg = colors.bg_highlight }
  groups.CursorLine = { bg = colors.bg_highlight }
  groups.Directory = { fg = colors.blue }
  groups.DiffAdd = { bg = colors.diff.add }
  groups.DiffChange = { bg = colors.diff.change }
  groups.DiffDelete = { bg = colors.diff.delete }
  groups.DiffText = { bg = colors.diff.text }
  groups.EndOfBuffer = { fg = colors.bg }
  groups.TermCursor = { fg = colors.black, bg = colors.cyan }
  groups.TermCursorNC = { fg = colors.black, bg = colors.cyan }
  groups.ErrorMsg = { fg = colors.error }
  groups.VertSplit = { fg = colors.border }
  groups.WinSeparator = { fg = colors.border, bold = true }
  groups.Folded = { fg = colors.blue, bg = colors.fg_gutter }
  groups.FoldColumn = { bg = opts.transparent and colors.none or colors.bg, fg = colors.comment }
  groups.SignColumn = { bg = opts.transparent and colors.none or colors.bg, fg = colors.fg_gutter }
  groups.SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_gutter }
  groups.Substitute = { bg = colors.red, fg = colors.black }
  groups.LineNr = { fg = colors.fg_gutter }
  groups.CursorLineNr = { fg = colors.dark5 }
  groups.MatchParen = { fg = colors.orange, bold = true }
  groups.ModeMsg = { fg = colors.fg_dark, bold = true }
  groups.MsgArea = { fg = colors.fg_dark }
  groups.MsgSeparator = {}
  groups.MoreMsg = { fg = colors.blue }
  groups.NonText = { fg = colors.dark3 }
  groups.Normal = { fg = colors.fg, bg = opts.transparent and colors.none or colors.bg }
  groups.NormalNC = { fg = colors.fg, bg = opts.transparent and colors.none or (opts.dim_inactive and colors.bg_dark or colors.bg) }
  groups.NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar }
  groups.NormalFloat = { fg = colors.fg, bg = colors.bg_float }
  groups.FloatBorder = { fg = colors.border_highlight, bg = colors.bg_float }
  groups.FloatTitle = { fg = colors.border_highlight, bg = colors.bg_float }
  groups.Pmenu = { bg = colors.bg_popup, fg = colors.fg }
  groups.PmenuSel = { bg = util.darken(colors.fg_gutter, 0.8) }
  groups.PmenuSbar = { bg = util.lighten(colors.bg_popup, 0.95) }
  groups.PmenuThumb = { bg = colors.fg_gutter }
  groups.Question = { fg = colors.blue }
  groups.QuickFixLine = { bg = colors.bg_visual, bold = true }
  groups.Search = { bg = colors.bg_search, fg = colors.fg }
  groups.IncSearch = { bg = colors.orange, fg = colors.black }
  groups.CurSearch = { link = "IncSearch" }
  groups.SpecialKey = { fg = colors.dark3 }
  groups.SpellBad = { sp = colors.error, undercurl = true }
  groups.SpellCap = { sp = colors.warning, undercurl = true }
  groups.SpellLocal = { sp = colors.info, undercurl = true }
  groups.SpellRare = { sp = colors.hint, undercurl = true }
  groups.StatusLine = { fg = colors.fg_sidebar, bg = colors.bg_statusline }
  groups.StatusLineNC = { fg = colors.fg_gutter, bg = colors.bg_statusline }
  groups.TabLine = { bg = colors.bg_statusline, fg = colors.fg_gutter }
  groups.TabLineFill = { bg = colors.black }
  groups.TabLineSel = { fg = colors.black, bg = colors.blue }
  groups.Title = { fg = colors.blue, bold = true }
  groups.Visual = { bg = colors.bg_visual }
  groups.VisualNOS = { bg = colors.bg_visual }
  groups.WarningMsg = { fg = colors.warning }
  groups.Whitespace = { fg = colors.fg_gutter }
  groups.WildMenu = { bg = colors.bg_visual }
  groups.WinBar = { link = "StatusLine" }
  groups.WinBarNC = { link = "StatusLineNC" }

  -- Syntax highlighting
  groups.Comment = vim.tbl_extend("force", { fg = colors.cyan_muted }, opts.styles.comments or {})
  groups.Constant = { fg = colors.orange }
  groups.String = { fg = colors.green }
  groups.Character = { fg = colors.green }
  groups.Number = { fg = colors.orange }
  groups.Boolean = { fg = colors.orange }
  groups.Float = { fg = colors.orange }
  groups.Identifier = vim.tbl_extend("force", { fg = colors.magenta }, opts.styles.variables or {})
  groups.Function = vim.tbl_extend("force", { fg = colors.blue }, opts.styles.functions or {})
  groups.Statement = vim.tbl_extend("force", { fg = colors.magenta }, opts.styles.keywords or {})
  groups.Conditional = vim.tbl_extend("force", { fg = colors.magenta }, opts.styles.keywords or {})
  groups.Repeat = vim.tbl_extend("force", { fg = colors.magenta }, opts.styles.keywords or {})
  groups.Label = { fg = colors.red }
  groups.Operator = { fg = colors.blue5 }
  groups.Keyword = vim.tbl_extend("force", { fg = colors.cyan }, opts.styles.keywords or {})
  groups.Exception = { fg = colors.magenta }
  groups.PreProc = { fg = colors.cyan }
  groups.Include = { fg = colors.magenta }
  groups.Define = { fg = colors.magenta }
  groups.Macro = { fg = colors.magenta }
  groups.PreCondit = { fg = colors.magenta }
  groups.Type = { fg = colors.blue1 }
  groups.StorageClass = { fg = colors.magenta }
  groups.Structure = { fg = colors.magenta }
  groups.Typedef = { fg = colors.magenta }
  groups.Special = { fg = colors.blue1 }
  groups.SpecialChar = { fg = colors.blue1 }
  groups.Tag = { fg = colors.red }
  groups.Delimiter = { fg = colors.blue5 }
  groups.SpecialComment = { fg = colors.blue7 }
  groups.Debug = { fg = colors.orange }
  groups.Underlined = { underline = true }
  groups.Bold = { bold = true }
  groups.Italic = { italic = true }
  groups.Ignore = { link = "NonText" }
  groups.Error = { fg = colors.error }
  groups.Todo = { bg = colors.yellow, fg = colors.bg }

  -- LSP
  groups.LspReferenceText = { bg = colors.fg_gutter }
  groups.LspReferenceRead = { bg = colors.fg_gutter }
  groups.LspReferenceWrite = { bg = colors.fg_gutter }
  groups.DiagnosticError = { fg = colors.error }
  groups.DiagnosticWarn = { fg = colors.warning }
  groups.DiagnosticInfo = { fg = colors.info }
  groups.DiagnosticHint = { fg = colors.hint }
  groups.DiagnosticUnnecessary = { fg = colors.cyan_muted }
  groups.DiagnosticVirtualTextError = { bg = util.darken(colors.error, 0.1), fg = colors.error }
  groups.DiagnosticVirtualTextWarn = { bg = util.darken(colors.warning, 0.1), fg = colors.warning }
  groups.DiagnosticVirtualTextInfo = { bg = util.darken(colors.info, 0.1), fg = colors.info }
  groups.DiagnosticVirtualTextHint = { bg = util.darken(colors.hint, 0.1), fg = colors.hint }
  groups.DiagnosticUnderlineError = { undercurl = true, sp = colors.error }
  groups.DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning }
  groups.DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info }
  groups.DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint }
  groups.LspSignatureActiveParameter = { bg = util.darken(colors.bg_visual, 0.4), bold = true }
  groups.LspCodeLens = { fg = colors.comment }
  groups.LspCodeLensSeparator = { fg = colors.fg_gutter }

  -- Load plugin-specific groups
  local plugins = {
    "blink",
    "cmp",
    "codeium",
    "copilot",
    "dap",
    "dashboard",
    "lazy",
    "render-markdown",
    "semantic_tokens",
    "snacks",
    "telescope",
    "treesitter",
    "treesitter-context",
    "which-key",
  }
  
  for _, plugin in ipairs(plugins) do
    local ok, plugin_groups = pcall(require, "axolotl.groups." .. plugin)
    if ok and plugin_groups.get then
      local plugin_highlights = plugin_groups.get(colors, opts)
      for group, highlight in pairs(plugin_highlights) do
        groups[group] = highlight
      end
    end
  end

  return groups
end

return M