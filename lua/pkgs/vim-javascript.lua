---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- JavaScript
-- > pangloss/vim-javascript

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    jsGlobalNodeObjects {fg = clrs.nord8, gui = spec.italic},
    hjsBrackets {base.Delimiter},
    jsFuncCall {base.Function},
    jsFuncParens {base.Delimiter},
    jsThis {base.Keyword},
    jsNoise {base.Delimiter},
    jsPrototype {base.Keyword},
    jsRegexpString {base.SpecialChar},
  }
end

return pkg

-- vi:nowrap
