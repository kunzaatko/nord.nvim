---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

local clrs = palette.clrs
local lang = function()
  return {perlPackageDecl {fg = clrs.nord7}}
end

return lang

-- vi:nowrap
