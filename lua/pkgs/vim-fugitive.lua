---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- fugitive.vim
-- > tpope/vim-fugitive

local clrs = palette.clrs
local pkg = function()
  return {
    gitcommitDiscardedFile { fg = clrs.nord11 },
    gitcommitUntrackedFile { fg = clrs.nord11 },
    gitcommitSelectedFile { fg = clrs.nord14 },
  }
end

return pkg

-- vi:nowrap
