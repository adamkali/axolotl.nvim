![axolotl-head-simple](https://github.com/user-attachments/assets/53e04d93-5e59-4640-900e-d6d867613beb)

A dark, axolotl-inspired colorscheme for Neovim based on the excellent [tokyonight.nvim](https://github.com/folke/tokyonight.nvim).

## ✨ Features

- **Rich Color Palette**: Inspired by the beautiful colors of axolotls
- **LSP Support**: Full support for LSP diagnostics and highlights
- **Plugin Support**: Works with popular Neovim plugins
- **Customizable**: Easy to configure and extend
- **Terminal Colors**: Consistent colors for your terminal

## 🎨 Color Palette

- **Primary**: `#662391` - Deep purple
- **Secondary**: `#082abc` - Deep blue  
- **Tertiary**: `#ec35e1` - Bright magenta
- **Quaternary**: `#b967db` - Light purple
- **Background**: `#13061d` - Very dark purple
- **Foreground**: `#e0cff0` - Light purple

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "adamkali/axolotl.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "adamkali/axolotl.nvim",
  config = function()
    require("axolotl").setup({})
    vim.cmd[[colorscheme axolotl]]
  end
}
```

## 🚀 Usage

```lua
-- Enable the colorscheme
vim.cmd[[colorscheme axolotl]]
```

## ⚙️ Configuration

```lua
require("axolotl").setup({
  -- disable italic comments
  styles = {
    comments = { italic = false },
    keywords = { italic = false },
    functions = {},
    variables = {},
  },
  -- make the background transparent
  transparent = false,
  -- disable terminal colors
  terminal_colors = true,
  -- configure sidebars
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
  -- callback that is called when colors are changed
  on_colors = function(colors)
    -- customize colors here
  end,
  -- callback that is called when highlights are applied
  on_highlights = function(highlights, colors)
    -- customize highlights here
  end,
})
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - The excellent foundation this theme is built upon
- The beautiful axolotl creatures that inspired the color palette
