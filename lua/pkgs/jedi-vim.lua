---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- davidhalter/jedi-vim

local clrs = palette.clrs
local spec = palette.spec
local gui_combine = palette.gui_combine
local pkg = function()
  return {
    jediFunction { fg = clrs.nord4, bg = clrs.nord3 },
    jediFat {
      fg = clrs.nord8,
      bg = clrs.nord3,
      gui = gui_combine { spec.underline, spec.bold },
    },

  }
end

return pkg

-- vi:nowrap
