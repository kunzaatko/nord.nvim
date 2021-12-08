---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local pkg = function()
  return {
    --  gray
    CmpItemAbbrDeprecated {gui = 'strikethrough', fg = clrs.nord3_bright},
    -- blue
    CmpItemAbbrMatch {fg = clrs.nord10},
    CmpItemAbbrMatchFuzzy {fg = clrs.nord10},
    -- light blue
    CmpItemKindVariable {fg = clrs.nord8},
    CmpItemKindInterface {fg = clrs.nord8},
    CmpItemKindText {fg = clrs.nord8},
    -- pink
    CmpItemKindFunction {fg = clrs.nord15},
    CmpItemKindMethod {fg = clrs.nord15},
    -- front
    CmpItemKindKeyword {fg = clrs.nord4},
    CmpItemKindProperty {fg = clrs.nord4},
    CmpItemKindUnit {fg = clrs.nord4},
  }
end

return pkg

-- vi:nowrap
