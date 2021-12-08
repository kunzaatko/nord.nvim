---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    awkCharClass {fg = clrs.nord7},
    awkPatterns {fg = clrs.nord9, gui = spec.bold},
    awkArrayElement {base.Identifier},
    awkBoolLogic {base.Keyword},
    awkBrktRegExp {base.SpecialChar},
    awkComma {base.Delimiter},
    awkExpression {base.Keyword},
    awkFieldVars {base.Identifier},
    awkLineSkip {base.Keyword},
    awkOperator {base.Operator},
    awkRegExp {base.SpecialChar},
    awkSearch {base.Keyword},
    awkSemicolon {base.Delimiter},
    awkSpecialCharacter {base.SpecialChar},
    awkSpecialPrintf {base.SpecialChar},
    awkVariables {base.Identifier},
  }
end

return lang

-- vi:nowrap
