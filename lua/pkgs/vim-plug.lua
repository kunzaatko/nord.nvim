-- @diagnostic disable: undefined-global
local palette = require 'nord-palette'

-- vim-plug
-- > junegunn/vim-plug

local clrs = palette.clrs
local pkg = function()
  return { plugDeleted { fg = clrs.nord11 } }
end

return pkg

-- vi:nowrap
