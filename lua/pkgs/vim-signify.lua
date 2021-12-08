---@diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- Signify
-- > mhinz/vim-signify

local clrs = palette.clrs
local pkg = function()
  return {
    SignifySignAdd {fg = clrs.nord14},
    SignifySignChange {fg = clrs.nord13},
    SignifySignChangeDelete {fg = clrs.nord11},
    SignifySignDelete {fg = clrs.nord11},
  }
end

return pkg

-- vi:nowrap
