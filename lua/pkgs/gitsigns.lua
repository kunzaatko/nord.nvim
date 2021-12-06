local palette = require 'nord-palette'

-- gitsigns.nvim
-- > lewis6991/gitsigns.nvim

local clrs = palette.clrs
local pkg = function()
  return {
    GreenSign {fg = clrs.nord14},
    BlueSign {fg = clrs.nord10},
    YellowSign {fg = clrs.nord13},
    RedSign {fg = clrs.nord11},
    PurpleSign {fg = clrs.nord15},
  }
end

return pkg

-- vi:nowrap
