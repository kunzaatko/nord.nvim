-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    gitcommitFirstLine { fg = clrs.nord10, gui = spec.bold },
    gitcommitSummary { gitcommitFirstLine },
    gitcommitBranch { fg = clrs.nord12, gui = spec.italic },
    gitcommitHeader { fg = clrs.nord11, gui = spec.underline },
    gitcommitSelectedType { fg = clrs.nord15 },
    gitcommitSelectedFile { fg = clrs.nord14, gui = spec.italic },
  }
end

return lang

-- vi:nowrap
