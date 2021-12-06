local palette = require 'nord-palette'
local base = require'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    cssAttributeSelector {fg = clrs.nord7},
    cssDefinition {fg = clrs.nord7, gui = "NONE"},
    cssIdentifier {fg = clrs.nord7, gui = spec.underline},
    cssStringQ {fg = clrs.nord7},
    cssAttr {base.Keyword},
    cssBraces {base.Delimiter},
    cssClassName {cssDefinition},
    cssColor {base.Number},
    cssProp {cssDefinition},
    cssPseudoClass {cssDefinition},
    cssPseudoClassId {cssPseudoClass},
    cssVendor {base.Keyword},
    cssSelectorOp {base.Keyword},
  }
end

return lang

-- vi:nowrap
