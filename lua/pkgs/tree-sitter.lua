---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    TSKeywordFunction {fg = clrs.nord12},
    TSKeywordReturn {fg = clrs.nord10.sa(10), gui = spec.bold},
    TSKeyword {fg = clrs.nord9},
    TSField {fg = clrs.nord7},
    TSFuncBuiltin {fg = clrs.nord13},
    TSPunctBracket {fg = clrs.nord15.da(10)},
    TSConstructor {TSPunctBracket},
    TSPunctDelimiter {fg = clrs.nord13},
    TSOperator {fg = clrs.nord13.da(10)},
    TSVariable {fg = clrs.nord11},
    TSFunction {fg = clrs.nord8},
    TSProperty {TSFunction},
    TSBoolean {fg = base.Boolean.fg, gui = spec.italic},
  }
end

return pkg

-- vi:nowrap
