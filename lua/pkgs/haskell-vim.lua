---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- Haskell
-- > neovimhaskell/haskell-vim

local clrs = palette.clrs
local pkg = function()
  return {
    haskellPreProc {fg = clrs.nord10},
    haskellType {fg = clrs.nord7},
    haskellPragma {haskellPreProc},
  }
end

return pkg

-- vi:nowrap
