local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    rustAttribute {fg = clrs.nord10},
    rustEnum {fg = clrs.nord7, gui = spec.bold},
    rustMacro {fg = clrs.nord8, gui = spec.bold},
    rustModPath {fg = clrs.nord7},
    rustPanic {fg = clrs.nord9, gui = spec.bold},
    rustTrait {fg = clrs.nord7, gui = spec.italic},
    rustCommentLineDoc {base.Comment},
    rustDerive {rustAttribute},
    rustEnumVariant {rustEnum},
    rustEscape {base.SpecialChar},
    rustQuestionMark {base.Keyword},
  }
end

return lang

-- vi:nowrap
