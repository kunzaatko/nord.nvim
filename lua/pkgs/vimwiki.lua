---@diagnostic disable: undefined-global
local palette = require 'nord-palette'
local base = require 'base'

-- Vimwiki
-- > vimwiki/vimwiki

local clrs = palette.clrs
local spec = palette.spec
local pkg = function()
  return {
    -- TODO: Add missing

    VimwikiLink {fg = clrs.nord8, gui = spec.underline},
    VimwikiHeaderChar {base.Keyword},
    VimwikiHR {base.Keyword},
    VimwikiList {base.Keyword},
  }
end

return pkg

-- vi:nowrap
