<img width="1880" height="1000" alt="splash" src="https://github.com/user-attachments/assets/a46a064f-0a33-4f6e-9c7a-00cdc286f660" />

A dark, purple and blue colorscheme for Neovim. [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) was used as a framework for working with the highlight groups in neovim.

This was reall just made in like 5 minutes with claude code so its nothing special or anything like that. I just really like how it looks on my monitor :). 

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
  end
}
```

## 🚀 Usage

```lua
-- Enable the colorscheme
vim.cmd[[colorscheme axolotl]]
```

## Snacks Dashboard
<img width="1880" height="1000" alt="SnacksDashboard" src="https://github.com/user-attachments/assets/724c58f5-798d-49d7-9a91-91661ee0b9dc" />

## Telescope
<img width="1880" height="1000" alt="egg" src="https://github.com/user-attachments/assets/f4d6578e-c59e-4a5f-a838-3c31ca7cfa9f" />

## Integrated Terminal 
<img width="1880" height="1000" alt="telescope" src="https://github.com/user-attachments/assets/365e01c2-7240-4b9f-b331-da8eb1f817e9" />

## Languages 
Here are some Languages that you may like using `axolotl.nvim` with

### Rust
<img width="1880" height="1000" alt="Rust" src="https://github.com/user-attachments/assets/55d828ec-1b98-44e8-9c3d-ac0dd70dda2c" />
### React
<img width="1880" height="1000" alt="React" src="https://github.com/user-attachments/assets/95b83fe1-fcd6-4131-ae0d-b74830279805" />
### Python
<img width="1880" height="1000" alt="Python" src="https://github.com/user-attachments/assets/cdb32d19-2aa7-4f63-8a7e-7c707f663581" />
### Neorg Note Taking
<img width="1880" height="1000" alt="Neorg " src="https://github.com/user-attachments/assets/38b246e4-e859-453d-bef5-85d253584f28" />
### Lua
<img width="1880" height="1000" alt="lua" src="https://github.com/user-attachments/assets/b27eb94b-95d5-4a6a-8605-4ebeae7b03ff" />
### Golang
<img width="1880" height="1000" alt="Golang" src="https://github.com/user-attachments/assets/f49574e6-9e9d-4700-ad53-40f42dd94799" />
### Gleam
<img width="1880" height="1000" alt="gleam" src="https://github.com/user-attachments/assets/171fdc0b-11d3-4192-a2ae-6394bc154acd" />





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

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request. 

## 🙏 Acknowledgments

- [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - The excellent foundation this theme is built upon
- Axolotls: Based of off the vibe i get from akolotls. I know there are not purple but i like dark themes more. So purple. Maybe later i will add a light theme based on a more pink color.
