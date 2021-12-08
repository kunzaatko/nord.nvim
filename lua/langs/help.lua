---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

local clrs = palette.clrs
local spec = palette.spec
local lang = function()
  return {
    helpBar {fg = clrs.nord3},
    helpHyperTextJump {fg = clrs.nord8, gui = spec.underline},
  }
end

return lang

-- vi:nowrap
