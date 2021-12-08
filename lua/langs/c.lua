--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    cIncluded {fg = clrs.nord7},
    cOperator {base.Operator},
    cPreCondit {base.PreCondit},

  }
end

return lang

-- vi:nowrap
