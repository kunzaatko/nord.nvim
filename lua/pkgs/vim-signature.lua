local palette = require 'nord-palette'

-- vim-signature
-- > kshenoy/vim-signature

local clrs = palette.clrs
local pkg = function()
  return {SignatureMarkText {fg = clrs.nord8}}
end

return pkg

-- vi:nowrap
