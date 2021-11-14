# Nord.nvim
A port of the popular and simplistic [nord](https://www.nordtheme.com/) colour scheme to neovim. The [`trunk`](https://github.com/kunzaatko/nord.nvim/tree/trunk) branch is an exact clone of the [nord-vim](https://github.com/arcticicestudio/nord-vim) colourscheme but written in [lush.nvim](https://github.com/rktjmp/lush.nvim).

![nord.nvim](https://user-images.githubusercontent.com/56647779/117521912-a0188b00-afb0-11eb-857a-7554874c5050.png)

# Customization
Every option that is possible to set in [nord-vim](https://github.com/arcticicestudio/nord-vim) is included. The defaults are preserved. For previews and full descriptions, see the official [nord vim port configuration website page](https://www.nordtheme.com/docs/ports/vim/configuration).

| Option                                                                                                                              | Default | Description                                                  |
| --------                                                                                                                            | ------- | -----------                                                  |
| [`nord_cursor_line_number_background`](https://www.nordtheme.com/docs/ports/vim/configuration#active-cursor-line-number-background) | `0`     | Use the same background on number when `cursorline` enabled  |
| [`nord_uniform_status_lines`](https://www.nordtheme.com/docs/ports/vim/configuration#uniform-status-lines)                          | `0`     | Use the same background for all statuslines on split windows |
| [`nord_bold_vertical_split_line`](https://www.nordtheme.com/docs/ports/vim/configuration#bold-vertical-split-lines)                 | `0`     | Lighter background for vertical split                        |
| [`nord_uniform_diff_background`](https://www.nordtheme.com/docs/ports/vim/configuration#uniform-diff-background)                    | `0`     | Use forground colours in diffs                               |
| [`nord_bold`](https://www.nordtheme.com/docs/ports/vim/configuration#bold-style)                                                    | `1`     | Enable bold font                                             |
| [`nord_italic`](https://www.nordtheme.com/docs/ports/vim/configuration#italic-style)                                                | `1`     | Enable italic font                                           |
| [`nord_italic_comments`](https://www.nordtheme.com/docs/ports/vim/configuration#italic-comments)                                    | `0`     | Use italic font for comments                                 |
| [`nord_underline`](https://www.nordtheme.com/docs/ports/vim/configuration#underline-style)                                          | `0`     | Enable underlining                                           |

# Tweaking
Since this port is written in [lush.nvim](https://github.com/rktjmp/lush.nvim), you can easily tweak the individual colours. Just open `lua/nord-nvim.lua` and customize the colours using the `lush` colour methods.

For example, if you want to make the background a bit darker
```lua
...
Normal {fg = clrs.nord4, bg = clrs.nord0.darken(10)},
...
```
You can preview the colour groups with the `:Lushify` if the `lush.nvim` plugin is loaded. For more methods and possibilities, look into [`lush.nvim`](https://github.com/rktjmp/lush.nvim) (It is amazing!).

# Installation
## [packer.nvim](https://github.com/wbthomason/packer.nvim)
```lua
use {
    'kunzaatko/nord.nvim',
    requires = {'rktjmp/lush.nvim', opt=true},
    config = function()
        vim.cmd("colorscheme nord")
    end,
} -- colorscheme
```
## [vim-plug](https://github.com/junegunn/vim-plug)
```vim
Plug 'kunzaatko/nord.nvim'
colorscheme nord
```

# Plugins
All plugins that are in the [vim port](https://github.com/arcticicestudio/nord-vim) are included.

# Contribution
This branch is intended to be an _exact copy_ of the [vim port](https://github.com/arcticicestudio/nord-vim). I will be restrained in adding any additional features or colour definitions. Only adequate alterations from the original should be neovim-exclusive features such as the planned definition of [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) colour groups etc.

If you want a customized (not the unofficial) nord theme, switch to the [`colourful`](https://github.com/kunzaatko/nord.nvim/tree/colourful) branch. There you can file issues if you think something could look better and submit PRs for adding plugins etc.
