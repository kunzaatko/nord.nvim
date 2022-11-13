-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- NERDTree
-- > scrooloose/nerdtree

local clrs = palette.clrs
local pkg = function()
  return {
    NERDTreeExecFile { fg = clrs.nord7 },
    NERDTreeDirSlash { base.Keyword },
    NERDTreeHelp { base.Comment },
  }
end

return pkg

-- vi:nowrap
