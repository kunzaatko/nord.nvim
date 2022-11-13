# Nord.nvim

A port of the popular and simplistic [nord](https://www.nordtheme.com/) colour scheme to neovim.

![showcase](https://user-images.githubusercontent.com/56647779/144943017-1a14824c-326b-4ee5-9f09-8489742bbf8a.png)

# Customization

The configuration options are set the same way as in the vim version, through vim global variables. Every option that is possible to set in [nord-vim](https://github.com/arcticicestudio/nord-vim) is included. The defaults are preserved. For previews and full descriptions, see the official [nord vim port configuration website page](https://www.nordtheme.com/docs/ports/vim/configuration).

| Option                                                                                                                                    | Default | Description                                                  |
| ----------------------------------------------------------------------------------------------------------------------------------------- | ------- | ------------------------------------------------------------ |
| [`vim.g.nord_cursor_line_number_background`](https://www.nordtheme.com/docs/ports/vim/configuration#active-cursor-line-number-background) | `0`     | Use the same background on number when `cursorline` enabled  |
| [`vim.g.nord_uniform_status_lines`](https://www.nordtheme.com/docs/ports/vim/configuration#uniform-status-lines)                          | `0`     | Use the same background for all statuslines on split windows |
| [`vim.g.nord_bold_vertical_split_line`](https://www.nordtheme.com/docs/ports/vim/configuration#bold-vertical-split-lines)                 | `0`     | Lighter background for vertical split                        |
| [`vim.g.nord_uniform_diff_background`](https://www.nordtheme.com/docs/ports/vim/configuration#uniform-diff-background)                    | `0`     | Use forground colours in diffs                               |
| [`vim.g.nord_bold`](https://www.nordtheme.com/docs/ports/vim/configuration#bold-style)                                                    | `1`     | Enable bold font                                             |
| [`vim.g.nord_italic`](https://www.nordtheme.com/docs/ports/vim/configuration#italic-style)                                                | `1`     | Enable italic font                                           |
| [`vim.g.nord_italic_comments`](https://www.nordtheme.com/docs/ports/vim/configuration#italic-comments)                                    | `0`     | Use italic font for comments                                 |
| [`vim.g.nord_underline`](https://www.nordtheme.com/docs/ports/vim/configuration#underline-style)                                          | `0`     | Enable underlining                                           |

---

## Additional Functionality

### Modularity of Specifications

Due to the features of `lush.nvim` and the added capabilities from using `lua`, it is possible to load languages and plugin specifications for colours modularly. You can now only load the plugins and languages that you actually use. This possibility is added by setting

```lua
-- Languages
vim.g.nord_langs = {'c', 'python', 'yaml'}  -- 'asciidoc', 'awk', 'c', 'cmake', 'cs', 'css', 'dosini', 'dt', 'gitconfig', 'go', 'help', 'html', 'java', 'json', 'less', 'lisp', 'lua', 'markdown', 'perl', 'php', 'pod', 'python', 'ruby', 'rust', 'sass', 'sh', 'sql', 'vim', 'xml', 'yaml'

-- Plugins
vim.g.nord_pkgs = {'gitsigns', 'vim-startify'} -- 'ale', 'coc', 'ctrlp', 'haskell-vim', 'jedi-vim', 'nerdtree', 'vim-clap', 'vim-fugitive', 'vim-gitgutter', 'vim-indent-guides', 'vim-javascript', 'vim-markdown', 'vim-plug', 'vim-signature', 'vim-signify', 'vimwiki', 'vim-yaml', 'yats'
```

This may decrease your loading time. It should not be an issue on modern machines, but nevertheless, it makes the loading just a little bit more snappy and you can be sure that nothing you do not care for is slowing you down.

The default behaviour remains the same, that is, that all the language support specs and plugins that are in the original are loaded. You can add others by defining the global variables as stated above. Additional package support groups you can add are `{'vimtex', 'cmp', 'cmp_vscode', 'gitsigns', 'vim-startify'}` and languages `{'gitcommit'}`. `cmp_vscode` is are highlights as defined in the `cmp` wikipage that make the highlights same as in vscode.

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

If you want to add support for a plugin, you can do so by adding the spec to the `lua/pkgs/` directory. To load it by default, you should add it to the default list `vim.g.nord_pkgs` in `lua/nord-nvim.lua`. Don't forget to add it to the `README.md` to document it for other users.
<!-- vim:set et sw=4 ts=4 nowrap: -->
