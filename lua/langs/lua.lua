-- @diagnostic disable: undefined-global
local base = require 'base'

local lang = function()
  return {
    luaFunc { base.Function },
    luaConstant { base.Boolean }, -- TODO: Could also be linked to Number for being violet <04-03-21, kunzaatko>
  }
end

return lang

-- vi:nowrap
