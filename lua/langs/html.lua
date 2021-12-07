local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local lang = function()
  return {
    htmlArg {fg = clrs.nord7},
    htmlLink {fg = clrs.nord4, gui = "NONE"},
    htmlBold {base.Bold},
    htmlTag {base.Keyword},
    htmlEndTag {htmlTag},
    htmlItalic {base.Italic},
    htmlH1 {fg = clrs.nord8},
    htmlH2 {htmlH1},
    htmlH3 {htmlH1},
    htmlH4 {htmlH1},
    htmlH5 {htmlH1},
    htmlH6 {htmlH1},
    htmlSpecialChar {base.SpecialChar},
    htmlTagN {htmlTag},
  }
end

return lang

-- vi:nowrap
