--@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    sassClass {fg = clrs.nord7},
    sassId {fg = clrs.nord7, gui = spec.underline},
    sassAmpersand {base.Keyword},
    sassClassChar {base.Delimiter},
    sassControl {base.Keyword},
    sassControlLine {base.Keyword},
    sassExtend {base.Keyword},
    sassFor {base.Keyword},
    sassFunctionDecl {base.Keyword},
    sassFunctionName {base.Function},
    sassidChar {sassId},
    sassInclude {base.SpecialChar},
    sassMixinName {base.Function},
    sassMixing {base.SpecialChar},
    sassReturn {base.Keyword},
  }
end

return lang

-- vi:nowrap
