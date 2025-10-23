# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is axolotl.nvim, a Neovim colorscheme plugin inspired by axolotl creatures and based on the architecture of tokyonight.nvim. It provides a dark, purple-focused theme with extensive plugin support.

## Architecture and Structure

### Core Color System
The colorscheme is built around a four-color base palette defined in `lua/axolotl/colors.lua`:
- **Primary**: `#662391` (Deep purple)
- **Secondary**: `#082abc` (Deep blue)  
- **Tertiary**: `#ec35e1` (Bright magenta)
- **Quaternary**: `#b967db` (Light purple)
- **Background**: `#13061d` (Very dark purple)
- **Foreground**: `#e0cff0` (Light purple)

Color variations (lighten, darken, mix) are generated dynamically using utility functions in `lua/axolotl/util.lua`.

### Plugin Architecture
The highlight system follows a modular plugin-based approach:

1. **Core highlights** are defined in `lua/axolotl/groups.lua` (editor, syntax, LSP basics)
2. **Plugin-specific highlights** are in separate files under `lua/axolotl/groups/`
3. Each plugin file follows the pattern:
   ```lua
   local M = {}
   M.url = "https://github.com/plugin/url"
   function M.get(c, opts) return { ... } end
   return M
   ```
4. Plugin groups are automatically loaded via the `plugins` array in `groups.lua`

### Entry Points
- `colors/axolotl.lua` - Traditional Vim colorscheme entry point
- `lua/axolotl/init.lua` - Main Lua module with setup/load functions
- `lua/axolotl/theme.lua` - Applies highlights to Neovim via `nvim_set_hl`

### Configuration System
- `lua/axolotl/config.lua` - Manages default options and user overrides
- Supports style customization (italic, bold), transparency, terminal colors
- Provides callbacks for color and highlight customization

## Development Commands

### Testing the Colorscheme
```vim
:colorscheme axolotl
```

### Loading Changes During Development
```lua
:lua package.loaded["axolotl"] = nil
:lua package.loaded["axolotl.colors"] = nil  
:lua package.loaded["axolotl.groups"] = nil
:colorscheme axolotl
```

### Adding New Plugin Support
1. Create `lua/axolotl/groups/{plugin-name}.lua` with the standard module pattern
2. Add the plugin name to the `plugins` array in `lua/axolotl/groups.lua`
3. Use `{ link = "HighlightGroup" }` for referencing other groups, never bare strings

## Important Implementation Details

### Highlight Group Patterns
- Always use `{ link = "GroupName" }` instead of `"GroupName"` strings
- Handle `style` properties by converting them to individual style attributes (italic, bold, etc.)
- Plugin groups should reference colors via the `c` parameter, not hardcoded values

### Color Modifications
- Base colors are generated in `colors.lua` using the core palette
- Use utility functions (`util.lighten`, `util.darken`, `util.mix`) for color variations
- Semantic colors (git, diff, errors) are derived from base colors for consistency

### Plugin Group Loading
The plugin system uses safe loading with `pcall` to gracefully handle missing plugins. When adding new plugin support, ensure the group file follows the established pattern and is added to the plugins array.

## Lualine Integration
The colorscheme includes a dedicated lualine theme at `lua/lualine/themes/axolotl.lua` that provides:
- Mode-specific color accents (normal=blue, insert=green, visual=magenta, etc.)
- Consistent styling with the main colorscheme
- Support for the `lualine_bold` configuration option

Users can enable it with:
```lua
require('lualine').setup {
  options = { theme = 'axolotl' }
}
```

## Supported Plugins
Current plugin integrations include: blink.cmp, nvim-cmp, codeium, copilot, nvim-dap, dashboard-nvim, lazy.nvim, render-markdown, snacks.nvim, telescope, treesitter, treesitter-context, which-key, LSP semantic tokens, and lualine.