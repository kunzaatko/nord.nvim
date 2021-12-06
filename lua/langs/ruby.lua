local palette = require 'nord-palette'
local base = require'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    rubyConstant {fg = clrs.nord7},
    rubySymbol {fg = clrs.nord6, gui = spec.bold},
    rubyAttribute {base.Identifier},
    rubyBlockParameterList {base.Operator},
    rubyInterpolationDelimiter {base.Keyword},
    rubyKeywordAsMethod {base.Function},
    rubyLocalVariableOrMethod {base.Function},
    rubyPseudoVariable {base.Keyword},
    rubyRegexp {base.SpecialChar},
  }
end

return lang

-- vi:nowrap
