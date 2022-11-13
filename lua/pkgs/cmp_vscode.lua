-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    CmpItemAbbrDeprecated { gui = 'strikethrough', fg = clrs.nord3_bright },

    CmpItemAbbrMatch { fg = clrs.nord10, bg = 'NONE', gui = spec.bold },
    CmpItemAbbrMatchFuzzy { CmpItemAbbrMatch },

    CmpItemMenu { fg = clrs.nord15, bg = 'NONE', gui = spec.italic },

    CmpItemKindField { fg = clrs.nord4, bg = clrs.nord11 },
    CmpItemKindProperty { CmpItemKindField },
    CmpItemKindEvent { CmpItemKindField },

    CmpItemKindText { fg = clrs.nord14.li(70), bg = clrs.nord14 },
    CmpItemKindEnum { CmpItemKindText },
    CmpItemKindKeyword { CmpItemKindText },

    CmpItemKindConstant { fg = clrs.nord13.li(70), bg = clrs.nord13 },
    CmpItemKindConstructor { CmpItemKindConstant },
    CmpItemKindReference { CmpItemKindConstant },

    CmpItemKindFunction { fg = clrs.nord6, bg = clrs.nord15 },
    CmpItemKindStruct { CmpItemKindFunction },
    CmpItemKindClass { CmpItemKindFunction },
    CmpItemKindModule { CmpItemKindFunction },
    CmpItemKindOperator { CmpItemKindFunction },

    CmpItemKindVariable { fg = clrs.nord3_bright.li(70), bg = clrs.nord3_bright },
    CmpItemKindFile { CmpItemKindVariable },

    CmpItemKindUnit { fg = clrs.nord13.li(60), bg = clrs.nord13.da(20) },
    CmpItemKindSnippet { CmpItemKindUnit },
    CmpItemKindFolder { CmpItemKindUnit },

    CmpItemKindMethod { fg = clrs.nord4, bg = clrs.nord10 },
    CmpItemKindValue { CmpItemKindMethod },
    CmpItemKindEnumMember { CmpItemKindMethod },

    CmpItemKindInterface { fg = clrs.nord4.li(30), bg = clrs.nord7 },
    CmpItemKindColor { CmpItemKindInterface },
    CmpItemKindTypeParameter { CmpItemKindInterface },
  }
end

return pkg

-- vi:nowrap
