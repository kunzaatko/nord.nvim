-- @diagnostic disable: undefined-global
local base = require 'base'

-- CtrlP
-- > ctrlpvim/ctrlp.vim

local pkg = function()
  return { hCtrlPMatch { base.Keyword }, CtrlPBufferHid { base.Normal } }
end

return pkg

-- vi:nowrap
